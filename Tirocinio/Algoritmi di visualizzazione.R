library(igraph)

# PRE-PROCESSING
url_chem = "https://raw.githubusercontent.com/pathology-dynamics/composite_view/refs/heads/main/semnet_test_data/formatted_cv_data_2.csv"

dat_chem = read.csv(url_chem, sep = ",")
edgelist_chem = dat_chem[, c("source_name", "source_type", "target_name", "target_type")]
edgelist_chem

source_node = data.frame(
  name = edgelist_chem$source_name,
  categoria = edgelist_chem$source_type,
  #type = edgelist_chem$source_type[!duplicated(edgelist_chem$source_name)],
  type = FALSE
)

target_node = data.frame(
  name = edgelist_chem$target_name,
  categoria = edgelist_chem$target_type,
  type = TRUE
)

nodi_totali = rbind(source_node, target_node)
nodi_totali = nodi_totali[!duplicated(nodi_totali$name), ]

#rete
rete_chem = graph_from_data_frame(
  d = edgelist_chem[, c("source_name", "target_name")],
  directed = FALSE,
  vertices = nodi_totali)


plot(rete_chem)
is_bipartite(rete_chem)


nomi_dei_target = unique(edgelist_chem$target_name)
V(rete_chem)$type = V(rete_chem)$name %in% nomi_dei_target

archi_problematici = E(rete_chem)[
  tail_of(rete_chem, E(rete_chem))$type == head_of(rete_chem, E(rete_chem))$type
]
archi_problematici

rete_chem = delete_edges(rete_chem, archi_problematici)


cat("Numero totale di nodi:", vcount(rete_chem), "\n")
cat("Numero totale di archi:", ecount(rete_chem), "\n")

source_node = V(rete_chem)$name[V(rete_chem)$type == FALSE]
target_node = V(rete_chem)$name[V(rete_chem)$type == TRUE]


length(source_node)
length(target_node)





# ALGORITMO


##target_positioning

mat_incidenza = as_biadjacency_matrix(rete_chem)
mat_incidenza[mat_incidenza > 0] = 1

matrice_co = crossprod(mat_incidenza)
diag(matrice_co) = 0

head(matrice_co)

#archi_finali

rete_target = graph_from_adjacency_matrix(
  matrice_co,
  mode = "undirected",
  weighted = TRUE,
  diag = FALSE
)


E(rete_target)$weight = 1 / E(rete_target)$weight
E(rete_target)$weight

E(rete_target)$color = rgb(0, 0, 0, 0.3)
V(rete_target)$color = rgb(1, 0, 0, 1)

archi_finali = as_data_frame(rete_target, what = "edges")

archi_finali

#archi_inutili = E(rete_target)[weight < 0.01]
#archi_inutili

#rete_target = delete_edges(rete_target, archi_inutili)

#archi_finali_use = as_data_frame(rete_target, what = "edges")
#archi_finali_use

target_layout = layout_with_fr(rete_target, grid = "nogrid", weights = E(rete_target)$weight, niter = 50)

plot(rete_target, layout = target_layout)

##source repopulation

lay = matrix(0, nrow = vcount(rete_chem), ncol = 2)
rownames(lay) = V(rete_chem)$name
lay[target_node, ] = target_layout

firme_target = sapply(source_node, function(s) {
  paste(sort(neighbors(rete_chem, s)$name), collapse = "|")
})

gruppi_source = split(source_node, firme_target)

dispersione = 0.25
set.seed(100)

for(firma in names(gruppi_source)) {
  nodi_del_gruppo = gruppi_source[[firma]]
  n_nodi = length(nodi_del_gruppo)
  
  # Se un Source non ha collegamenti (firma vuota), lo mettiamo al centro (0,0)
  if(firma == "") {
    lay[nodi_del_gruppo, ] = c(0,0)
    next
  }
  
  # Calcoliamo il centroide una sola volta per tutto questo gruppo
  targets = unlist(strsplit(firma, "\\|"))
  target_coord = lay[targets, , drop = FALSE]
  centroide_x = mean(target_coord[, 1])
  centroide_y = mean(target_coord[, 2])
  
  lay[nodi_del_gruppo, 1] = centroide_x + rnorm(n_nodi, mean = 0, sd = dispersione)
  lay[nodi_del_gruppo, 2] = centroide_y + rnorm(n_nodi, mean = 0, sd = dispersione)
}


## relaxation
n_nodi = vcount(rete_chem)

limite_min_x = rep(-Inf, n_nodi)
limite_max_x = rep(Inf, n_nodi)
limite_min_y = rep(-Inf, n_nodi)
limite_max_y = rep(Inf, n_nodi)

indici_target = which(V(rete_chem)$name %in% target_node)

limite_min_x[indici_target] = lay[indici_target, 1]
limite_max_x[indici_target] = lay[indici_target, 1]
limite_min_y[indici_target] = lay[indici_target, 2]
limite_max_y[indici_target] = lay[indici_target, 2]

lay_rilassato = layout_with_fr(
  rete_chem,
  coords = lay,           
  niter = 20,             
  start.temp = 1,         
  minx = limite_min_x, 
  maxx = limite_max_x,
  miny = limite_min_y, 
  maxy = limite_max_y
)






# PLOT

V(rete_chem)$size[V(rete_chem)$type == TRUE] = 1
V(rete_chem)$color[V(rete_chem)$type == FALSE] = rgb(red = 0, green = 0, 
                                             blue = 1, alpha = 1)

V(rete_chem)$color[V(rete_chem)$type == TRUE] = rgb(red = 1, green = 0, 
                                            blue = 0, alpha = 1) 


V(rete_chem)$label = ""
V(rete_chem)$label.color = rgb(0, 0, 0, .5) 
V(rete_chem)$label.cex = .5
V(rete_chem)$frame.color = V(rete_chem)$color 

V(rete_chem)$size[V(rete_chem)$type == TRUE] = 6
V(rete_chem)$size[V(rete_chem)$type == FALSE] = 1.5

E(rete_chem)$color = rgb(0, 0, 0, 0.05)

pdf("adjusted_spring.pdf")
plot(rete_chem, layout=lay_rilassato)
dev.off() 

rete_lay = layout_with_fr(rete_chem, grid = "nogrid", niter= 2000)
pdf("FR.pdf")
plot(rete_chem, layout = rete_lay)
dev.off()

kk_lay = layout_with_kk(rete_chem, maxiter = 100 * vcount(rete_chem))
pdf("kk.pdf")
plot(rete_chem, layout= kk_lay)
dev.off()




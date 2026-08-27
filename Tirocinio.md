---
tags:
  - TODO
aliases:
data: "`2026-08-27 14:16`"
---
- # Argomenti:
	- Network analysis.
	- il tirocinio consisterebbe nell'analizzare vari algoritmi di analisi dei network e catalogarli dividendoli per:
		- categorie di utilizzo. 
		- efficacia.
		- implementabilità.
- # igraph:
	- è una libreria di _R_ che permette di ottenere un network partendo da una [[Grafi#^afcfa6|matrice di adiacenza]] usando la funzione: `graph_from_adjacency_matrix()` dandogli la matrice in input e decidendo se renderla diretta o meno. 
	- se si stampa il risultato si nota come si possono ottenere informazioni utili:
		- ``` R
			## IGRAPH e7e2087 DN-- 24 77 -- 
			## + attr: name (v/c)
			## + edges from e7e2087 (vertex names):
			##  [1] 1 ->3  1 ->5  1 ->7  1 ->21 2 ->3  2 ->6  3 ->6  3 ->8  3 ->16 3 ->24
			## [11] 4 ->13 4 ->18 7 ->1  7 ->9  7 ->10 7 ->16 8 ->3  8 ->9  8 ->13 9 ->5 
			## [21] 9 ->8  10->6  10->14 10->19 10->20 10->24 11->12 11->15 11->18 11->24
			## [31] 12->11 12->15 12->24 13->8  14->10 14->13 14->19 14->21 14->24 15->10
			## [41] 15->11 15->13 15->14 15->24 16->3  16->5  16->9  16->19 17->8  17->13
			## [51] 17->18 17->23 17->24 18->13 18->17 18->23 18->24 19->14 19->16 19->20
			## [61] 19->21 20->19 20->21 20->24 21->5  21->19 21->20 22->23 23->5  23->13
			## [71] 23->17 23->18 24->6  24->10 24->14 24->15 24->21
		```
		- per esempio si può notare come da 24 nodi che rappresentavano gli studenti si ricavano 77 archi.
	- con la funzione `set_vertex_attr()` è possibile assegnare ad ogni nodo della _network_ un determinato attributo che possedeva nel _data frame_ ottenuto partendo dal _csv_ di partenza ottenendo quindi informazioni aggiuntive per ogni nodo:
		- ```R
			## IGRAPH e7e2087 DN-- 24 77 -- 
			## + attr: name (v/c), gender (v/x), grade (v/n), race (v/x)
			## + edges from e7e2087 (vertex names):
			##  [1] 1 ->3  1 ->5  1 ->7  1 ->21 2 ->3  2 ->6  3 ->6  3 ->8  3 ->16 3 ->24
			## [11] 4 ->13 4 ->18 7 ->1  7 ->9  7 ->10 7 ->16 8 ->3  8 ->9  8 ->13 9 ->5 
			## [21] 9 ->8  10->6  10->14 10->19 10->20 10->24 11->12 11->15 11->18 11->24
			## [31] 12->11 12->15 12->24 13->8  14->10 14->13 14->19 14->21 14->24 15->10
			## [41] 15->11 15->13 15->14 15->24 16->3  16->5  16->9  16->19 17->8  17->13
			## [51] 17->18 17->23 17->24 18->13 18->17 18->23 18->24 19->14 19->16 19->20
			## [61] 19->21 20->19 20->21 20->24 21->5  21->19 21->20 22->23 23->5  23->13
			## [71] 23->17 23->18 24->6  24->10 24->14 24->15 24->21
		```
	- ## Costruire il network dalla lista di archi:
		- `igraph` permette anche di costruire la rete partendo dalla lista degli archi.
			- ```R
				##   sender receiver weight
				## 1      1        3      1
				## 2      1        5      1
				## 3      1        7      1
				## 4      1       21      1
				## 5      2        3      1
				## 6      2        6      1
			```
				- questa è la testa della lista degli archi 
		- si può quindi ottenere la rete usando la funzione `graph_from_data_frame(d,directed)`
			- `d`: è la lista da dare in input 
			- `directed`: booleano.
			- ```R
				## IGRAPH 0feff96 DNW- 24 77 -- 
				## + attr: name (v/c), weight (e/n)
				## + edges from 0feff96 (vertex names):
				##  [1] 1 ->3  1 ->5  1 ->7  1 ->21 2 ->3  2 ->6  3 ->6  3 ->8  3 ->16 3 ->24
				## [11] 4 ->13 4 ->18 7 ->1  7 ->9  7 ->10 7 ->16 8 ->3  8 ->9  8 ->13 9 ->5 
				## [21] 9 ->8  10->6  10->14 10->19 10->20 10->24 11->12 11->15 11->18 11->24
				## [31] 12->11 12->15 12->24 13->8  14->10 14->13 14->19 14->21 14->24 15->10
				## [41] 15->11 15->13 15->14 15->24 16->3  16->5  16->9  16->19 17->8  17->13
				## [51] 17->18 17->23 17->24 18->13 18->17 18->23 18->24 19->14 19->16 19->20
				## [61] 19->21 20->19 20->21 20->24 21->5  21->19 21->20 22->23 23->5  23->13
				## [71] 23->17 23->18 24->6  24->10 24->14 24->15 24->21
			```
				- si può notare come venga aggiunto in automatico l'attributo `weight` 
				- inoltre aggiungendo alla funzione l'opzione `vertices` è possibile assegnare ad ogni vertice gli attributi dal _data frame_ relativo. (ovviamente deve essere mantenuto l'ordine dei vertici). 
		- ### N.B:
			- se nei dati sono presenti nodi isolati che quindi non hanno correlazioni con altre entità è necessario quando si usa la funzione `graph_from_data_frame` usare subito l'opzione `vertices` anche solo mettendo l'attributo `id`
				- `graph_from_data_frame(d = class_edges, directed = T, vertices = (id = 1:26))`
				- che se plottata con la funzione `plot` restituisce:
					- ![[Pasted image 20260827185318.png|377]]
			- fare questo passaggio usando l'argomento `vertices` è quindi _good practice_. 
	- ## Estrarre informazioni dagli oggetti igraph:
		- usando `vertex_attr(graph, name)` ottengo un determinato attributo di tutti i nodi di `graph` 
		- si può inoltre estrarre la lista di archi o la matrice a partire dalla rete con funzioni come:
			- `as_edgelist(graph, names)` 
			- `as_adjacency_matrix(graph)`
		- da notare come queste nuove istanze riflettano le modifiche fatte alla rete effettuando di fatto una
- # Network:
	- è un'altra libreria di _R_ che permette più o meno di fare le stesse cose di `igraph` 
- # Alcune misure chiave delle reti:
	- ## Grado di un nodo:
		- è una misura che indica il numero di archi che incidono su di un nodo (_in-degree_) oppure il numero di archi che partono da quel nodo (_out-degree_)
		- calcolabile su _R_ con la funzione `degree(graph = class_netbyedgelist, mode = "out")` per cambiare il tipo di grado basta mettere `mode = "in"`
	- ## Densità:
		- rappresenta il rapporto tra il numero di nodi $V$ e il numero di vertici $E$
		- calcolabile in _R_ con la funzione `edge_density()`
	- ## Cammini:
		- sono una qualsiasi sequenza di nodi e archi (sia in avanti che indietro) che connettono un nodo $i$ e uno $j$ per esempio:
			- $i \to k \to m \to k \to j$ è un cammino da $i$ a $j$ di lunghezza $4$
		- un oggetto di interesse però è per esempio il numero di cammini di una _determinata lunghezza_ che collegano _due determinati nodi_ 
			- per calcolarlo basta elevare la matrice che indica i collegamenti tra i nodi alla $n-esima$ potenza dove $n$ è la lunghezza del cammino che si sta cercando 
	- ## Percorsi, distanza e vicinanza
		- è un cammino da $i$ a $j$ con $i\ne j$ e non è permesso visitare lo stesso nodo più di una volta, per esempio:
			- $i\to k \to j$ è un percorso di lunghezza $2$ 
		- ### Percorso più corto:
			- di solito è di interesse conoscere qual è il percorso più corto, anche detto _distanza_, tra due nodi. 
			- in _R_ si può usare la funzione `distance(graph, mode)` 
				- con `mode = "out"` si calcola la distanza da $i$ a $j$ che di solito è quello che si cerca.
				- ovviamente la distanza tra $i$ e $j$ con $i=j$ è $0$ 
				- mentre se non esiste un cammino da $i$ a $j$ la loro distanza sarà $\inf$ 
			- con la funzione `all_shortest_paths(graph, from, to)` si può calcolare tutti i percorsi più brevi tra due nodi.
		- ### Distanza media:
			- a volte è interessante riassumere la distanza di tutte le coppie $(i,j)$ di nodi, come conoscere la distanza media tra ogni coppia di nodi
			- usando la funzione `mean()` escludendo ogni nodo non raggiungile posso calcolare questa distanza media.
			- #### N.B:
				- se non escludessi i nodi non raggiungibili tra loro, otterrei $\inf$ come risultato e ciò può anche essere utile perché mi dice che c'è almeno una coppia di nodi che tra di loro non sono raggiungibili. 
		- ### Vicinanza:
			- è una sorta di misura da usare quando ci sono nodi non raggiungibili tra loro, invertendo la matrice delle distanze tutti le coppie con $\inf$ avranno ora distanza $0$ e quindi si potranno aggiungere nel calcolo della media 
			- il problema risulta nel fatto che la lettura non risulta molto intuitiva.
	- ## Raggiungibilità:
		- rappresenta se $i$ può raggiungere il nodo $j$ o meno 
- # Link Utili:
	- 
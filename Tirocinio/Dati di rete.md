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
- # Network data dinamici:
	- in sostanza si cerca di osservare i cambiamenti dei dati nella rete con lo scorrere del tempo.
	- serve quindi che oltre alle informazioni principali, siano presenti anche informazioni temporali su questi dati.
	- ## Reti longitudinali discrete:
		- ### Preparare i dati:
			- come esempio uso il rapporto di amicizia di ragazzi di una classe delle superiori con  la loro situazione in un determinato semestre (questo dato sarà l'informazione temporale necessaria).
			- è sempre utile ordinare i dati in base al loro _id_
			- di solito nel caso in cui certi nodi non siano presenti nel periodo temporale successivo, per esempio il secondo semestre, si usa cancellare quei nodi. Nel nostro caso però saranno mantenuti tutti i nodi.
			- ovviamente siccome si parla di un cambio temporale alcuni attributi possono variare nel tempo. 
		- ### Costruire gli oggetti networkDynamic:
			- in _R_ si può usare principalmente la funzione `networkDynamic()` e come input si può usare tranquillamente una lista di network da trasformare.
				- `networkDynamic(net_list, vertex.pid= "vertex.names" , create.TEAs = T)`
					- impostare `vertex.pid` è utile se ci sono nodi che escono e entrano nella rete col variare del tempo e impostandolo a `vertex.names` ci si assicura che tutti i nodi presenti in almeno un fronte temporale saranno presenti.
					- impostando `create.TEAs` a _True_ si sta dicendo alla funzione di creare attributi che cambiano nel tempo per ogni vertice e attributo. In questo modo si creano automaticamente degli attributi per i nodi che si basano sulle reti in input permettendo allo stesso tempo agli attributi di cambiare nel tempo.
			- trasformando il risultato in un `data.frame` si possono notare certe informazioni:
				- ![[Pasted image 20260829183315.png]]
					- `onset` rappresenta quando un arco da `tail` a `head` è stato formato avendo valore $0$ significa che l'amicizia tra due compagni da $i$ a $j$ si è formata nel primo fronte temporale ed è terminata li senza protrarsi nel secondo, infatti `terminus` è uguale ad $1$ e di conseguenza la `duration` di questo arco è $1$ nel caso in cui la relazione continui anche nel secondo fronte temporale il valore `terminus` sarà uguale a $2$ e la duration anche.
					- una relazione formatasi nel secondo fronte avrà `onset = 1` e `terminus = 2` con `duration=1`
			- si possono estrarre informazioni come gli _id_ dei nodi dalla rete:
				- `get.vertex.pid(net_dynamic_class)[1:5]` 
			- ottenendo:
				- `"113214" "115909" "121470" "122706" "122710"`
					- quindi il nodo $1$ è `113214` e così via. 
			- Si può anche ricavare l'attività di un determinato nodo, quindi capire se un vertice è presente o meno in entrami i fronti temporali usando la funzione:
				- `get.vertex.activity(net_dynamic_class, as.spellList = T)` ottenendo un risultato simile a quello precedente ma con informazioni diverse.
				- ![[Pasted image 20260829184341.png]]
			- da ciò ovviamente si possono ricavare informazioni basate su condizioni come: tutti i nodi con `duration < 2` 
				- `activity_data[activity_data$duration < 2, ]`
		- ### Ricavare le statistiche riassuntive:
			- si usa `tSnaStats()` che un wrapper per le funzioni di `sna` ma da usare per i network dinamici. Utilizza i seguenti argomenti:
				- `nd` = il network dinamico 
				- `snafun` = la funzione di interesse 
					- `gden` per la densità 
				- `start` = opzione che indica l'eventuale inizio della valutazione 
				- `end` = stessa cosa ma per la fine 
				- `time.interval` = periodi temporali in cui si suddivide la ricerca 
				- `aggregate.dur` = periodi temporali che effettivamente vengono analizzati.
			- questa funzione non lavora molto bene per quanto riguarda le misure a livello di nodo (quindi che riguardano i singoli nodi nello specifico) quando ci sono nodi che si aggiungono o si tolgono col passare del tempo, Tuttavia lo si può comunque calcolare a separatamente per ogni network e successivamente fare il merge dei `data.frame` ottenuti.
	- ## Reti con tempo continuo:
		- si osservano dei flussi di eventi che accadono in tempo reale 
		- si hanno molti cambi di periodo e si notano più interazioni tra i soggetti 
		- visualizzare normalmente questo insieme di interazioni fra nodi elimina tutta la dinamicità della rete in quanto si saprà solo se $i$ ha interagito o meno con $j$ nell'arco di tutti i fronti temporali, in tal senso si potrebbe visualizzare la rete in ogni momento e verificare poi come cambiano i collegamenti.
		- calcolare le misure riassuntive risulta un po' più complicato in quanto sono presenti molti più fronti temporali e quindi non si ha un momento preciso in cui fare le misure.
			- serve quindi definire un fronte temporale nel quale fare le misure.
		- per esempio si può verificare se ci sia stata o meno un interazione tra due vertici in un arco di $10$ minuti.
			- in questo caso risultano utili le opzioni `time.interval` e `aggregate.dur` settandoli a $10$ 
			- ![[Pasted image 20260829193923.png]]
				- nei primi $10$ minuti 1 sola persona ha parlato con $1$ mentre nei 10 minuti successivi 2 persone gli hanno parlato.
- # Visualizzare i network:
	- https://inarwhal.github.io/NetworkAnalysisR-book/ch5-Network-Visualization-R.html
- # Diadi e Triadi:
	- 
- # Link Utili:
	- 
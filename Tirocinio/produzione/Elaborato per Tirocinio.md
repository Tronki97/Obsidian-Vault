# Introduzione alle network data 
Per Network data sono un insieme di informazioni che riguardano delle entità definite come _nodi_ di questa rete, le informazioni che li riguardano sono attributi singoli del nodo (come nome, cognome, età se si parla di una persona) e i collegamenti con altri nodi appartenenti alla rete.
Lo scopo per cui vengono utilizzate principalmente è quello di rappresentare relazioni tra varie entità (nodi) e svolgendo quella che viene chiamata _network analysis_ trarre conclusioni che riguardino la struttura della rete, come possa essersi formata per essere così, ecc...
# Tipologie di reti e sottostrutture
## Reti Ego-alter 
ogni soggetto detto _ego_ fornisce informazioni su altri soggetti detti _alters_, ciò comprende informazioni sulla relazione che c'è tra ego e alter 
 si possono usare per predire la dimensione della rete in funzione di alcune caratteristiche, oppure predire alcuni attributi della rete usando le sue caratteristiche, per esempio se un _ego_ ha un alto numero di collegamenti con _alters_ quali conclusioni si possono trarre?
## Comunità:
è un sottoinsieme di nodi con un'alta densità e un basso numero di legami verso nodi al di fuori di quel gruppo; un fattore importante è il riuscire a identificare queste comunità e per questo esistono vari metodi come: _Algoritmo Walktrap_, _Edge betweenness_, _multi-level clustering_, _Cohesive blocking_
## Reti Bimodali:
è un tipo di rete dove sono presenti 2 tipi di nodi, _source_ e _target_, tutti i collegamenti sono di tipo _source-target_ quindi i nodi target non avranno mai un arco che li collega.
Di solito questi 2 tipi di nodi nelle reti rappresentano entità di due classi diverse, come _libri_ e _lettori_ e un informazione utile può essere chi ha letto un determinato libro
## Diadi e Triadi
le Diadi sono sono coppie di nodi, mentre le triadi sono un sottoinsieme formato da 3 nodi 

# Indici delle reti 
Quando si fa network analysis una caratteristica principale che si analizza è quella degli indici, ovvero dei valori che possono riguardare un singolo nodo, un arco o alcune porzioni dell'intera rete.
## Grado
La misura che per ogni nodo ne indica i legami con altri e si divide in 2 tipologie:
- _in-degree_: per ogni nodo $i$ rappresenta il numero di collegamenti che vanno da un nodo $j\ne i$ verso il nodo $i$ 
- _out-degree_: per ogni nodi $i$ rappresenta il numero di collegamenti che partono da esso e incidono su di un altro nodo $j\ne i$ 
## Densità 
 Questa misura calcola il numero totale di archi presenti nella rete e lo divide per il numero possibile di archi.
## Cammini 
 Un cammino è una sequenza di nodi e archi (in avanti o indietro) che connette un nodo $i$ e un nodo $j$
 spesso è utile calcolare quanti cammini di una determinata lunghezza colleghino 2 nodi
## Percorsi
sono sequenze di nodi e archi che iniziano con un nodo e finiscono con un altro, inoltre ad un percorso non è permesso di ripassare su di un nodo già visitato 
### Distanza 
è un determinato tipo di percorso infatti è quello più breve che collega 2 nodi nella rete; spesso è utile anche sapere qual è la distanza media dei nodi nella rete.
### Vicinanza 
Si usa quando nella rete sono presenti delle coppie non raggiungibili e si basa sull'inverso della _matrice delle distanze_ (la quale è una matrice dove ogni cella indica la distanza tra i due nodi rappresentati dagli indici di quella cella) 
### Raggiungibilità
Rappresenta la possibilità di esistenza di un percorso che collega due nodi $i$ e $j$ quindi si può anche dire che se la distanza tra due nodi è minore di $\inf$ allora uno può raggiungere l'altro.
### Diametro 
Rappresenta la lunghezza del percorso più lungo presente nella rete.
## Omofilia 
è una caratteristica che indica il livello di somiglianza in un insieme, nelle reti si misura analizzando le coppie di nodi con dei collegamenti e verificando quali attributi condividano.
- nelle reti ego è interessante guardare in che proporzione l'_ego_ condivida un determinato attributo con i suoi _alter_ 
## Diversity 
è una misura utilizzata per indicare quanto diversi siano gli _alters_ in una rete ego 
## Censimento di Diadi e Triadi 
Ci sono 3 tipi di Diadi che sono _nulle_, _mutue_ e _asimmetriche_ e di solito si fa una conta di quante ce ne siano per ognuno di questi tipi, in particolare si calcola il _rapporto di reciprocità_ che esprime la quantità di diadi _mutue_ rispetto alle altre 
Per quanto riguarda le _triadi_ ne esistono di 16 tipi, di questa sottostruttura si misura il _rapporto di transitività_
- Il numero di triadi $(i,j,k)$ tali che $i\to j \wedge j\to k \implies i \to k$  
## Connettività
per una coppia di nodi $(i,j)$ rappresenta il numero di nodi necessari da rimuovere affinché $i$ non possa più raggiungere $j$. 
Per quanto riguarda l'intera rete rappresenta il numero minimo di nodi necessari da rimuovere affinché un qualsiasi nodo $i$ non riesca più a raggiungere un qualsiasi altro nodo $j$ 
## Centralità 
è un insieme di misure che rappresentano quali nodi sono i più importanti della rete.
### Betweenness:
Indica il numero di percorsi più brevi che passano per uno specifico nodo della rete 
### Autovettore:
 Da maggior valore, quindi peso, ai nodi con più collegamenti verso altri nodi altamente collegati, esistono le versioni, _in_ e _out_, ma per molti tipi di dati si usa la versione non orientata  
### Bonacich power centrality:
 Generalizza la _centralità autovettoriale_ permettendo di aggiungere un parametro di attenuazione che se positivo e molto basso agisce come con gli autovettori, invece se lo si imposta negativo fa si che essere collegati a nodi altamente connessi diminuisce il "punteggio" di quel nodo.
### Page rank 
Una formula sviluppata da google per calcolare la centralità di un nodo (_pagina_) in base all'importanza dei nodi che puntano ad essa.
## Centralizzazione 
Parametro che cerca di riassumere la distribuzione delle varie misure di centralità della rete, se la rete risulta altamente _centralizzata_ significa che è anche molto fragile in quanto la maggior parte dei collegamenti è incentrata su un piccolo gruppo di nodi, che se rimossi ridurrebbero di molto la _connettività_ della rete.
## Coesione 
una rete con alta coesione è resistente rispetto alla perdita di nodi chiave ed esiste come unità più grande oltre che alla presenza di determinati nodi
sfrutta vari indici per essere definita e questi sono: _densità_, _distanza media_, _Connettività_
## Tau 
Questa misura cerca di catturare come dei micro-processi si aggreghino per formare diverse macro-strutture. 
Si fanno delle ipotesi, ovvero si stima in che quantità certi tipi di triadi debbano essere presenti e in questo modo si otterrà una diversa struttura al livello superiore 
## Matrice di Equivalenza strutturale:
Una misura che indica quanto ogni nodo $i$ sia simile al nodo $j$ con $i\ne j$, prendendo come riferimento diverse reti aventi tutte gli stessi nodi ma collegamenti diversi.
Più i pattern di collegamento tra le varie reti sono simili più la distanza quei tra due nodi sarà bassa.  

# Visualizzazione delle reti:
Una parte importante durante la network analysis è anche visualizzare queste reti che si stanno analizzando, nel senso proprio di vedere i nodi e i loro collegamenti a schermo ciò permette di avere una visione più intuitiva della struttura e anche individuare a prima vista delle comunità presenti. 
Per visualizzare le reti è d'uso comune personalizzare sia il layout che l'etichettatura che la colorazione della rete; l'etichettatura e la colorazione danno un piccolo aiuto visivo nel caso si necessiti di distinguere certi nodi della rete, mentre modificare il layout che avrà nella visualizzazione permette anche di capire meglio la struttura della rete togliendo gli impedimenti visivi rappresentati dalla sovrapposizione di nodi e archi. 
Esistono vari algoritmi per modificare il layout che avrà la rete, una volta visualizzata.
## Fruchterman-Reingold 
Basato su forze di attrazione e repulsione questo algoritmo assegna ai nodi e agli archi che li collegano dei valori per simulare delle forze di attrazione e repulsione
tutto ciò viene trattato come una simulazione di un sistema meccanico e quindi intuitivo.
è adatto per reti di medie dimensioni $(50-500)$ nodi 
## Kamada-kawai 
Come l'algoritmo _Fruchterman-Reingold_ anche questo è _force-directed_ ma non è basato interamente su simulazioni iterative di un sistema fisico, piuttosto ha l'obiettivo di mantenere proporzionale la distanza visualizzata tra due nodi con quella "teorica" della rete. 
La forza che respinge o attira i vari nodi si basa sulla distanza che c'è tra quei due nodi in questo modo il layout finale cerca di rispecchiare al meglio la struttura teorica della rete  
## Circular 
Questo algoritmo molto semplicemente posizioni i nodi della rete in una disposizione circolare ad intervalli regolari di distanza.

## Adjusted spring 

## TrammelGraph 

## Algoritmo di Layout per la visualizzazione di una rete cerebrale 

## Structural entropy 








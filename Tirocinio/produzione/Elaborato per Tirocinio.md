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
## Fruchterman-Reingold (FR)
Basato su forze di attrazione e repulsione questo algoritmo assegna ai nodi e agli archi che li collegano dei valori per simulare delle forze di attrazione e repulsione
tutto ciò viene trattato come una simulazione di un sistema meccanico e quindi intuitivo.
è adatto per reti di medie dimensioni $(50-500)$ nodi 
## Kamada-kawai (KK)
Come l'algoritmo _Fruchterman-Reingold_ anche questo è _force-directed_ ma non è basato interamente su simulazioni iterative di un sistema fisico, piuttosto ha l'obiettivo di mantenere proporzionale la distanza visualizzata tra due nodi con quella "teorica" della rete. 
La forza che respinge o attira i vari nodi si basa sulla distanza che c'è tra quei due nodi in questo modo il layout finale cerca di rispecchiare al meglio la struttura teorica della rete  
## Circolare 
Questo algoritmo molto semplicemente posizioni i nodi della rete in una disposizione circolare ad intervalli regolari di distanza. Sono spesso utilizzati nell'ambito delle telecomunicazioni per realizzare delle topologie di rete e quindi stabilire i collegamenti degli _access point_
## Adjusted spring 
Ideato in [CompositeView: A Network-Based Visualization Tool](https://www.mdpi.com/2504-2289/6/2/66) è un tipo di layout usato per le _reti bimodali_. 
Il problema che vuole risolvere è che durante la visualizzazione di queste reti, i nodi _target_ finiscono per rimanere in mezzo a tutti gli altri nodi _source_ e in questo modo si finisce per non avere un'interpretazione precisa di come siano costituiti i cluster di nodi _source_ 
Il suo algoritmo è composto da 3 step principali:
- Si isolano i nodi _target_ e simulandoli con l'algoritmo _FR_ (Fruchterman-Reingold) essi saranno collegati tramite degli archi artificiali che si basano sulla presenza o meno di collegamenti ad un insieme di nodi _source_ condivisi.
	- il peso associato a questi archi, che determina la "forza di attrazione" che collega due nodi, è inversamente proporzionale al numero di nodi _source_ connessi ad un insieme condiviso di nodi _target_.
	- ![[Pasted image 20260915170652.png]]
- si procede poi aggiungendo i nodi _source_ e collegandoli ai relativi _target_ rimuovendo gli _archi artificiali_ messi in precedenza
	- ![[Pasted image 20260915171026.png]]
- Infine si esegue nuovamente l'algoritmo _FR_ con un po' meno di iterazioni per evitare un lungo tempo di elaborazione andando così però a minare l'interpretabilità.
	- ![[Pasted image 20260915171224.png]]
## TrammelGraph 
Ideato in [TrammelGraph: visual graph abstraction for comparison](https://link.springer.com/article/10.1007/s12650-020-00706-2) ha l'obiettivo di unire la capacità di illustrare la struttura generale di un grafo, del metodo _node-link_, con la capacità eliminare il disordine visivo causato dalla sovrapposizione dei nodi e archi, del metodo _matrice di adiacenza_. 
L'intero metodo a sua volta si basa su [UnTangle Map](https://ieeexplore.ieee.org/abstract/document/7091015) che usa una rete triangolare per ancorare un'astrazione di un grafo dettagliato.
- Ogni vertice di questa rete triangolare rappresenta un nodo del grafo
- I nodi con con forti connessioni tra di loro vengono posizionati vicini in questa rete triangolare 
- Alcuni archi vengono rimossi e quelli che rimangono vengono posizionati lungo gli archi di questa rete 
L'algoritmo si divide in due step principali:
- _graph embedding_: per ogni nodo del grafo originale si calcola il suo vettore delle feature il quale riflette le connessioni dei nodi all'interno del grafo, Le distanze euclidee tra i vettori codificano quindi la forza di quelle connessioni.
- _structure abstraction_: si mappano i nodi nelle posizioni dei vertici all'interno di una griglia triangolare regolare. Usando i vettori delle feature ci si assicura che i nodi fortemente connessi vengano collegati regolarmente nella rappresentazione astratta. 
![[Pasted image 20260918130506.png|783]]
## Algoritmo di Layout per la visualizzazione di una rete cerebrale 
Ideato in [Spatial-data-driven layouting for brain network visualization](https://www.sciencedirect.com/science/article/pii/S0097849322000668) questo algoritmo è usato per rappresentare le reti cerebrali 3D in un layout _nodo-link_ 2D mantenendone le caratteristiche strutturali, quindi le regioni del cervello anatomicamente adiacenti saranno rappresentate come nodi vicini nel layout 2D e la forma generale del cervello viene riflessa nel layout. 
### Input
gli input di questo algoritmo sono 2:
- una _parcellazione del cervello_, ovvero una suddivisione delle regioni del cervello in 3D, ogni regione è definita tramite delle coordinate 3D, che possono essere o i _voxel_ stessi che formano una region oppure i centri di massa delle regioni 
	- inoltre ogni regione ha le sue caratteristiche (nome, acronimo, codice-colore, dimensione e una lista di sotto-regioni)
- una _rete cerebrale_ in formato di grafo, con nodi rappresentanti gli elementi neurali a livello delle regioni, gli archi hanno un peso che rappresenta il livello di connettività che c'è tra i nodi
L'algoritmo in se è composto da 7 step principali
- _1_: Si crea una _Parcellation-Derived Connectivity_, che rappresenta la vicinanza delle regioni del cervello, calcolando il numero di _voxel_ di ogni regione che sono adiacenti a quelli di altre, il risultato viene normalizzata dal numero totale di _voxel_ per quella determinata regione 
- _2_: Siccome le reti cerebrali sono spesso incomplete si aggiungono dei _nodi ombra_ che coprono le parti del cervello che non facevano parte della rete ricevuta in input.
  Questi _nodi ombra_ non verranno visualizzati alla fine, ma occuperanno dello spazio che sarà di un colore riconoscibile (grigio), Il rapporto di presenza di questi nodi ombra va definito in base alle necessità della visualizzazione.
- _3_: si proiettano le posizioni 3D delle regioni della rete cerebrale come dei nodi, di fatto rendendo quelle coordinate 2D occupate per il layout finale  
- _4_:  si crea il layout basato sulla _Parcellation-Derived Connectivity_, creata nello step 1, usando un algoritmo di layout _force-directed_ in particolare _CoSE-Bilkent_, le forze di repulsione e attrazione vanno però manualmente modificate in base alla sovrapposizione dei nodi nella proiezione dello step 3 
- _5_: lo step precedente può comunque lasciare alcuni nodi sovrapposti, quindi si cerca di equalizzare la distribuzione dei nodi nello spazio 2D, si generano poi gli archi basandosi sulla triangolazione tra i nodi e si esegue di nuovo un algoritmo per il layout _force-directed_ 
- _6_: In questo passaggio si colorano le regioni per dare un contesto anatomico nella visualizzazione
  per prima cosa tutti i nodi 2D vengono parcellati tramite [Diagramma di Voronoi](https://it.wikipedia.org/wiki/Diagramma_di_Voronoi) limitando l'area su cui può agire creando un involucro convesso con un po' di padding intorno ai nodi. Attorno all'involucro si piazzano dei nodi virtuali che vengono considerati solo durante la creazione del _diagramma Voronoi_. Si raggruppano poi tutte le celle occupate in base alle regioni 2D di sfondo.
- _7_: Ora si lasciano solo i nodi della rete cerebrale sopra le regioni di sfondo che rappresentano mettendo le etichette relative ad essi, incluso l'emisfero di cui fanno parte (dx o sx); nel caso la rete cerebrale di input avesse più dettagli della parcellazione si mettono più nodi per regione con colori simili a quelli adiacenti inoltre _più un collegamento tra nodi è forte meno un arco che li collega sarà trasparente_
![[Pasted image 20261016194057.png]]
## Structural entropy 
Descritto in [Structural Entropy Based Visualization of Social Networks](https://kops.uni-konstanz.de/entities/publication/b1640da4-2e09-48d7-8170-94d8e84427aa)
questo algoritmo cerca di rivelare l'organizzazione modulare della rete usando l'_entropia strutturale_, ovvero una misura che descrive la connettività di una rete data una specifica partizione gerarchica.
- una bassa entropia implica un'organizzazione più regolarizzata della rete, ovvero le strutture delle comunità saranno più chiare
L'algoritmo sfrutta l'albero di codifica della rete, che ne cattura la gerarchia della minimizzando l'entropia e rivelando la struttura delle comunità multi-scala della rete, la sua costruzione è divisa in 3 passi:
- _costruzione bottom-up_: si costruisce l'albero binario _iterativamente_ unendo due nodi figli per formare una nuova divisione, cercando di massimizzare la riduzione dell'entropia ad ogni step
- _compressione_: si riduce l'altezza dell'albero a $k$ rimuovendo selettivamente dei nodi intermedi per mantenere un'entropia strutturale minima. 
- _Cross-layer link resolution_: per garantire consistenza si aggiungono dei nodi intermedi dove serve per preservare delle relazioni gerarchiche valide tra i layer senza alterare l'entropia calcolata.
- ![[Pasted image 20261016194211.png|434]]
Una volta ottenuto l'albero si esegue la parte principale dell'algoritmo, ovvero la partizione adattiva della rete dove ci si vuole assicurare che le partizioni riflettano la vera organizzazione della rete selezionando delle comunità dai diversi livelli della gerarchia. Questo Passaggio restituirà dei pesi per ogni arco della rete, da questi pesi si ricavano le forze di _attrazione_ e _repulsione_ dell'algoritmo di layout _FR_ 
![[Pasted image 20261016194256.png]]                                                     ![[Pasted image 20261016194314.png]]







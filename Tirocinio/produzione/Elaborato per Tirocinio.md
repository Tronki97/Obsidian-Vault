# Introduzione alle network data 
Per Network data sono un insieme di informazioni che riguardano delle entità definite come _nodi_ di questa rete, le informazioni che li riguardano sono attributi singoli del nodo (come nome, cognome, età se si parla di una persona) e i collegamenti con altri nodi appartenenti alla rete.
Lo scopo per cui vengono utilizzate principalmente è quello di rappresentare relazioni tra varie entità (nodi) e svolgendo quella che viene chiamata _network analysis_ trarre conclusioni che riguardino la struttura della rete, come possa essersi formata per essere così, ecc...

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
## Vicinanza 






---
tags: []
aliases:
  - netmask
  - subnetting
  - classless interdomain routing
  - subnet mask
data: "`2024-11-06 13:11`"
---
- # Argomento:
	- avere una sottorete vuol dire sotto-dividere internamente una rete, rubando una parte di bit dalla parte che sarebbe dell’host number. 
	- per fare questa cosa si usa la Netmask
- # Netmask: ^430c89
	- cominciano sempre con un 1 a destra o a sinistra ed appena il numero cambia da 0 a 1 o viceversa tutti quelli successivi sono uguali.
	- Ogni sottorete necessita del suo router.
	- dato un [[Indirizzamento IPv4||IP]] spiega all’host quali bit sono della rete e se ci sono e quanti sono i bit attribuiti alla _sottorete_.
	- rubando un bit dalla parte dell’_host_ divide in due la rete:
		- quindi rubandone $n$ si creano $2^{n}$ sottoreti.
	- quindi la parte dei bit che viene rubato è chiamata _sottorete_ 
	- per capire da quale bit la maschera inizia a rubare bisogna guardare la [[Indirizzamento IPv4#^c84a48|classe di rete]], 
	- necessita di un indirizzo IP per poter essere definita
- # Classless inter domain routing:
	- un modo semplice per rappresentare una sottorete.
	- mettere un simbolo e un numero per dire che si sta parlando di una sottorete.
		- _inserisci esempio_.
- # Supernetting:
	- operazione contraria al subnetting che consiste nel regalare bit della rete all’host 
	- quindi fondendo diverse reti
- # Attenzione:
	- quando si va ad allocare dello spazio per gli host è importante assegnare lo spazio a partire dall’alto e dal blocco più grande. Tutto questo per evitare la frammentazione.
		- questo perché il subnetting funziona dai bit più significativi.
- # Esercizio:
	- ![[Pasted image 20241113151121.png]]
		- 1) so che la rete a disposizione è : $130.136 \ \ \ / 16$ ovvero ho a disposizione tutta la rete.
		- 2) parto dalla sottorete più bassa con il più grande numero di host. (IP2-B)
			- devo allocare 140 host quindi mi servono 256-2 spazi (siccome 128 non bastano) ovvero 8 bit (l’ultimo byte) 
			- Di conseguenza il terzo byte diventa la sottorete regalando tutti quei bit rendendo la rete $/24$ .
			- quindi tutti gli host vanno da $[130.136.0.1- 130.136.0.254]$ (compreso il router che è l’ultimo) 
			- risulta infine che sono allocati 140 indirizzi lasciandone 114 non utilizzati.
		- 3) metto giù la sottorete IP2-A
			- richiede 120 host quindi bastano 128-2 spazi (7 bit) 
				- una domanda da farsi è se mai verranno aggiunti altri host in futuro e in quel caso si utilizzano già preventivamente un bit in più.
			- visto che necessito solo di 7 bit il bit inutilizzato va alla maschera di sottorete rendendo la rete $/ 25$
			- quindi l’indirizzo di questa sottorete 
				- $130.136.1.0$
			- e tutti gli host vanno da $[130.136.1.1- 130.136.126]$ (compreso il router).
		- 4) progetto la rete completa IP2:
			- contiene esattamente 260 host 
			- necessita di 512 spazi quindi 9 bit di host con una subnet mask di 7 bit rendendola di tipo $/ 23$ 
		- 5) progetto la rete IP1:
			- contiene 48 host
			- necessita di 64 spazi quindi 6 bit di host con una subnet mask di 10 bit rendendola di tipo $/ 26$
			- 
- # Link Utili:
	- 
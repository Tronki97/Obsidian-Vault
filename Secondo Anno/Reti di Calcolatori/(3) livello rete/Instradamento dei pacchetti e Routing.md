---
tags: []
aliases:
  - forwarding
  - routing
data: "`2024-11-14 17:31`"
---
- # Instradamento:
	- avviene grazie a delle strutture dati dette _tabelle di forwarding_ nelle quali sono presenti le informazioni necessarie per inoltrare i pacchetti.
	- ![[Pasted image 20241115132647.png|500]]
		- in questo caso se la sottorete $Y.2$ deve inviare un pacchetto a $K.2$ deve passare per il router $Ry2$ che poi guarda le sue sottoreti e controlla che ci sia il destinatario.
		- se non c'è il destinatario il router inoltra il pacchetto al router successivo.
		- il router successivo è scelto grazie alla _tabella di forwarding_ nel quale poi è presente l'indirizzo del prossimo router ovvero $Rk$.
		- infine il pacchetto viene mandato alla sottorete giusta e al destinatario.
- # Routing
	- aggiorna costantemente le tabelle di forwarding dei router
		- come modifiche dei cammini per dei dati causate da modifiche in accordi tra gestori delle _autonomus system_ (_AS_: conglomerati di reti che rispettano le stesse regole)
	- quando vengono modificate le tabelle di forwarding dei router si necessita del tempo di reazione.
	    - _reazione_: il tempo necessario affinché tutti i router siano aggiornati con le nuove informazioni. 
	    - ## Protocolli di reazione: 
	        - vengono inviate richieste per sapere se qualcun altro conosce la strada migliore.
	        - aggiornamento delle tabelle di forwarding con la strada migliore.
	    - ## algoritmi di routing:
	        - RIP (Routing Information Protocol) 
	        - OSPF (Open Shortest Path First)
	        - BGP (Border Gateway Protocol)
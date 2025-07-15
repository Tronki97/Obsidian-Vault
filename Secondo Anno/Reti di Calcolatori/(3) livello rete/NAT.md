---
tags: 
aliases:
  - port scanning
  - regole di filtraggio
  - filtraggio NAT
data: "`2024-12-18 14:39`"
---
- # Network access translation:
	- Quando un router deve farsi vedere da internet deve avere un indirizzo IP pubblico e statico 
		- ![[NAT1.webp||450]]
	- Questo router contiene una tabella chiamata _NAT translation table_, che _associa un numero di porta alta ad una macchina che si trova all'interno della rete locale mascherata dal router_.
		- Conterrà quindi due indirizzi:
			+ ## WAN (Wide Area Network) Side Address
			+ ## LAN (Local Area Network) Side Address
		+ Il _NAT_ permette quindi di fare in modo che una macchina presente alla sua rete locale sia convinta di poter comunicare con l'esterno come qualsiasi altro host, soltanto che non è realmente così.
		+ ![[NAT2.webp||450]]
	+ Si _possono avere reti NAT nidificate all'interno di altre reti NAT_.
		+ Più le reti NAT sono nidificate più layer di mascheramento avremo per le nostre macchine presenti nella rete locale privata.
	+ Le _reti tipiche di indirizzamento NAT sono la 10... (classe A) e la 192.168... (classe C)_.
	+ Se un _pacchetto destinato alla rete locale privata dovesse uscire per sbaglio dal router dalla rete NAT, esso girerebbe all'infinito in rete_ in quanto non troverebbe mai una destinazione corretta.
		+ Questo perché le _macchine vengono mascherate_ ed è come se non fossero visibili dall'esterno.
		+ Questo ovviamente non succede in quanto appena il _Time To Leave (TTL) del pacchetto arriva a $0$ esso viene cestinato_.
	+ Affinché una macchina all'interno della rete NAT sia visibile dall'esterno, bisogna eseguire il _port mapping_.
		+ Come detto prima viene associata una porta ad una macchina, in modo da sapere con chi comunicare di preciso.
	+ ## Regole di filtraggio:
		+ Il router può anche applicare delle _regole di filtraggio_.
			+ Ci sono vari tipi di regole:
				+ #### Deny
					+ _Rifiuto_ la comunicazione.
				+ #### Pass
					+ _Accetto_ la comunicazione.
				+ #### Detour
					+ Prima di poter comunicare il _router fa degli ulteriori accertamenti per assicurarsi che la macchina non sia un eventuale attaccante_.
			+ Oppure vengono usati dei _sistemi di intelligenza artificiale che decidono arbitrariamente le politiche di filtraggio dei pacchetti_ all'interno del router.
	+ ## Port scanning:
		+ Per capire come è fatta una rete NAT al suo interno si esegue un _port scanning_. ^100d60
			+ Una macchina dall'esterno prova ogni porta del NAT finche' non ha completamente capito come è fatta l'architettura della rete e quali sono le potenziali debolezze di essa.
			+ Per evitare questo fenomeno, il router controlla se una macchina sta controllando tutte le porte in maniera sequenziale. Una volta individuato il comportamento sospetto, il router filtra la macchina in modo che non possa più comunicare con la rete.
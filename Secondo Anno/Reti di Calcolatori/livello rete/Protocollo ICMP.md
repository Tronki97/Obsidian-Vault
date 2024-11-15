---
tags:
  - TODO
aliases:
  - ping
  - traceroute
data: "`2024-11-15 13:44`"
---
- # Internet control message protocol:
	- protocollo per fare dei controlli su internet attraverso messaggi capibili da tutti quelli che usano questo protocollo.
	- questi messaggi contengono notifiche di errore di configurazione e gestione dei cammini e collegamenti sono rappresentati come codici che rappresentano diversi errori:
		- rete di destinazione non raggiungibile.
			- ovvero il router di quella rete non mi risponde nonostante sia quello contenuto nella destinazione della tabella di [[Instradamento dei pacchetti e Routing|forwarding]] 
		- rete di destinazione sconosciuta.
			- a un certo punto durante il percorso per spedire un pacchetto risponde dicendo che non conosce quella rete di destinazione. 
		- host di destinazione non raggiungibile
			- si riesce a raggiungere il router a cui dovrebbe appartenere quell’host ma non si riesce ad inviare, non viene inviato l’acknowledgement
		- host di destinazione sconosciuto. 
			- si riesce a raggiungere il router a cui dovrebbe appartenere quell’host ma l’host number non corrisponde a nessuno di quelli che sono presenti nella tabella di forwarding. 
- # Applicazioni:
	- ## Ping:
		- è un programma che permette di verificare la connessione tra due host.
	- ## Traceroute:
	    - è un programma che permette di verificare il percorso di un pacchetto da un host a un altro.
	    - questo percorso non è sempre lo stesso, cambia in base al carico di lavoro dei router.
	    - 
- # Link Utili:
	- 
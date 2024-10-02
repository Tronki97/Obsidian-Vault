---
tags:
  - TODO
aliases: 
date: 2024-10-02
---
- # Link utili:
	- 
- # Argomento
	- lo standard per l'architettura dei protocolli delle reti è chiamata 
		- _Standard_ _ISO/OSI RM_ (Open System Interconnection Reference Model)
		- ovvero l'insieme dei livelli per supportare la comunicazione in rete 
	- L'architettura è organizzata in _7 livelli _ 
		- ogni livello gestisce una classe di problematiche diverse 
		- ogni livello fornisce ai livelli superiori una forma semplificata della rete 
			- Astrae il livello d'architettura sottostante per far avvenire il dialogo tra livelli.
			- interfaccia comune per tutti i protocolli
		- ![[Pasted image 20241002134308.png||600]]
		- ## Livelli:
			- ### 1°
				- definisce le tecniche per codificare trasmettere e ricevere i dati.
			- ### 2° 
				- il MAC(medium access control) definisce il Frame che è il nome del pacchetto gestito al _livello 2_ e li dentro deve essere contenuto l'indirizzo di mittente e destinatario.
				- questo livello decide quando inviare ogni frame e deve stare attento ad evitare le collisioni 
				- _LLC_: verifica che la trasmissione dei frame sia andata a buon fine. 
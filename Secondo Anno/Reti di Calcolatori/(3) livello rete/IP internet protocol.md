---
tags:
  - TODO
aliases: 
data: "`2025-03-17 09:56`"
---
- # datagramma IP:
	- ## Header:
		- ## bit di versione:
			- Per indicare lo [[Indirizzamento IPv4|ipv4 o ipv6]]
		- ## Type of service:
			- è una etichetta del flusso che determinava la priorità del pacchetto ma adesso il router con la switching fabric non lo guarda.
		- ## Lunghezza del datagramma:
			- è la lunghezza totale del datagramma in byte.
			- Utile per far capire ai gestori di memoria.
		- ## Flag per la frammentazione:
			- Consente di capire se è un frammento del pacchetto completo.
		- ## fragment offsett:
			- Dice quale parte del pacchetto è.
		- ## Time to live:
			- è un contatore che decrementa ad ogni passaggio tra router del pacchetto.
			- Se arriva a 0 il pacchetto viene scartato.
		- ## Upper layer:
			- Dice a quale protocollo destinare il pacchetto al [[Livello trasporto]] rappresentato con un codice su questa etichetta.
		- ## Check summ:
			- Somma di controllo che prende i dati dell’header.
			- Serve a capire se c’è un bit errato nell’header utile per capire se il pacchetto è stato corrotto e in caso cestinarlo.
		- ## Indirizzo IP:
			- Indirizzo del mittente e del destinatario.
		- ## Opzionali:
			- Ora di creazione e spedizione del pacchetto.
			- La traccia del cammino del pacchetto fatto attraverso ogni router
			- Lista di router da attraversare.
	- ## Sezione dati:
		- Contiene i dati del pacchetto, segmenti [[Livello trasporto#^bd8258|UDP]] o [[Livello trasporto#^157bc5|TCP]]
	- ## OverHead:
		- 20 bytes di TCP
		- 20 bytes per l’IP
		- In più altri byte per il livello.
- # Frammentazione e riassemblaggio:
	- I link spesso non riescono a far passare pacchetti di grandi dimensioni quindi si decide di frammentare in 3 pacchetti più piccoli quello principale altrimenti si rischia che un bit venga corrotto e il pacchetto cestinato di conseguenza.
	- In caso uno di questo 3 pacchetti fallisca il viaggio si necessita di rimandare solo quello e non tutto quanto 
	- I pacchetti vengono riassemblati dal destinatario. 
	- ## Esempio di frammentazione:
		- Datagramma da 4000 byte.
		- MTU = 1500 byte.
		- Quindi si frammenta in 3 pacchetti da 20 +1480  byte massimo  di cui i primi 20 sono l’header.
		- L’id di ogni sotto-pacchetto sarà uguale a quello del pacchetto originale.
		- Il flag di frammentazione sarà settato a 1 per i pacchetti tranne per l’ultimo che è messo a 0 indica appunto che dopo quello non bisogna aspettarne altri.
		- L’offset indica la posizione del frammento nel pacchetto originale; se è a 0 indica che è la prima parte del pacchetto
			- Per esempio 185 indica che si parte dal primo bit dopo i primi $185*8$ 
		- ![[Pasted image 20250317102806.png]]
		- 
- # Link Utili:
	- 
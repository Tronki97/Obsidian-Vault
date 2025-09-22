---
tags: []
aliases: 
data: "`2024-09-24 10:01`"
---
- # Intro:
	- in informatica si usano due codifiche molto simili per rappresentare un contenuto e tutto ciò che c'è intorno
		- molti ambienti informatici hanno restrizioni sui vari caratteri utilizzabili.
	- per gestire ambiente e contenuto si usa:
		- ## Escaping:
			- interpretare un carattere particolare come contenuto e non come ambiente o parte di codice.
				- String c = `"Questa stringa \"contiene\" caratteri speciali;"`
				- `<p>Questa stringa &quot;contiene&quot; caratteri speciali</p>`
		- ## Encoding:
			- il carattere proibito viene rappresentato numericamente con il suo codice secondo la sintesi speciale:
				- `"felicit\u00E0" `= "felicità"
				- `<p>felicit&#x00E0;</p>`
				- `<p>felicit&#224;</p>`
- # SMTP:
	- simple mail transfer protocol.
	- è un protocollo text-based, per lo scambio di messaggi di posta e la verifica dei destinatari dei messaggi.
	- Una connessione SMTP è composta da una apertura, uno o più sequenze di comandi, ed una chiusura. 
	- Ad ogni comando corrisponde una risposta composta da un codice numerico ed una stringa leggibile:
		- `MAIL FROM:<Smith@alpha.com>`
		  `250 OK`
		- `RCPT TO:<Green@beta.com>`
		  `550 No such user here`
	- ## Limiti:
		- La lunghezza massima del messaggio è di 1 Mb
		- I caratteri accettati sono solo ASCII a 7 bit
		- Ogni messaggio deve contenere una sequenza CRLF ogni 1000 caratteri o meno
	- Questi tipi di limiti impediscono la trasmissione di documenti binari:
		- un file binario usa tutti i 256 byte.
		- può essere più lungo di 1 mb.
	- ## Soluzione:
	    - si usa _MIME_
- # MIME:
	- Multipurpose Internet Mail Extensions.
	- MIME ridefinisce il formato del corpo di RFC 822 per permettere:
		- l'invio di messaggi con testo in formato non ASCII
		- Un insieme estensibile di formati per messaggi non testuali
		- Messaggi multi-parte
- # Link Utili:
	- 
---
tags: []
aliases:
  - send
  - receive
  - messaggio
data: "`2024-11-29 10:06`"
---
- # Argomento:
	- meccanismi per condividere informazioni tra [[Concorrenza#^68dcd8|processi]] riguardo la memoria privata di ogni processo.
- # Messaggio:  ^d2687a
	- informazione formattata da un processo mittente e interpretato dal destinatario.
- # Operazioni:
	- `send`:
		- spedisce il messaggio, e bisogna specificare la destinazione 
	- `receive`:
		- riceve il messaggio, si può specificare il mittente da cui ci si aspetta il messaggio oppure esserne uno qualsiasi.
		- questo è l’unico modo che ha un processo per ricevere un messaggio.
- # Modelli:
	- ## Sincrono:
		- le due operazioni vanno fatte insieme.
			- quindi entrambe le operazioni sono bloccanti.
		- definiti come senza memoria perché entrambi si bloccano e non hanno una coda di messaggi
	- ## asincrono:
		- la `send` non è bloccante ma la `receive` lo è
			- si presenta una coda di messaggi che vengono spediti in attesa che vengano ricevuti.
	- ## Completamente asincrono:
		- Nessuna delle due operazioni è bloccante
		- Quando si fa la `receive`, e non ci sono messaggi non si blocca e dice che non ci sono messaggi.
	- 
- # Link Utili:
	- 
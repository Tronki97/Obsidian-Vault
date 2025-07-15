---
tags: []
aliases:
  - incapsulamento
data: "`2024-10-09 13:13`"
---
- # Argomento:
	- utilizza solo 5 dei 7 [[Architettura standard dei protocolli||livelli]] _ISO/OSI RM_ 
	- la sessione di comunicazione è gestita a livello trasporto e al livello applicazione 
	- quando l'applicazione comunica i dati arrivano al livello applicazione che determina quali bit in quella stringa hanno un _determinato significato_ e poi chiede al livello trasporto di spedire i dati e di garantire la comunicazione e il ritorno dell'aknowledgement oppure sperare che arrivi.
	- ## Incapsulamento:  
		- il livello trasporto e MAC poi aggiunge delle informazione nell'header e nella coda della stringa(_processo di incapsulamento_) per:
			- dare una sorta di Id alla stringa di dati. 
			- in coda mettere un segmento che dica se sono presenti errori. 
			- informazioni che dicano ai pacchetti a quale router andare per poi essere smistati 
			- inserire il [[MAC-address]] per capire il mittente e destinatario.
			- capire se il pacchetto dati sia arrivato o meno
		- per capire a quale delle applicazioni inviare i dati dal livello più basso serve sapere il numero di _porta_ connesso. 
		- _socket_: contiene indirizzo IP e numero di porta
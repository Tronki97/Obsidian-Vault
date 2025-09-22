---
tags: 
aliases:
  - salti incondizionati
  - salti condizionati
data: "`2024-08-31 20:05`"
---
- grazie all'[[Pre-fetch istruzioni#^0b8e3f||IFU]] il processore hack ha una minima tecnica di di pipeline disponibile (_a due stadi_)
- visto che possono esserci salti nell'esecuzione dell'istruzione non sempre fare [[Pre-fetch istruzioni||pre-fetch]] aiuta 
- permette di eseguire più operazioni di _feth-decode-excecute_ in un unico periodo grazie all'attuazione di quelle operazioni in maniera parallela
- per prevenire problemi nei salti le architetture moderne usano dei metodi per prevedere i salti dai primi stadi della pipeline:
	- #### Salti incondizionati:
		- si possono identificare già in fase di decode (proprio perché si è certi che si eseguirà il salto)
	- #### Salti condizionati
		- si usano delle euristiche come:
			- è più probabile che vengano eseguiti salti in avanti piuttosto che indietro
			- se un'istruzione ha generato un salto nelle sue due ultime esecuzioni ci si aspetta che salti di nuovo
- un altro problema della tecnica di pipelining si presenta qualora le istruzioni non fossero indipendenti tra di loro 
	- In questo caso bisognerebbe accorgersi della situazione e aspettare che la prima istruzione abbia terminato tutti gli stadi prima che le altre operazioni possano caricare gli altri operandi (_stall_) 
	- i calcolatori di solito usano il trucchetto di riordinare tutte le istruzioni dipendenti così da dare il tempo alla prima istruzione di essere completata prima che le altre istruzioni creino uno stallo.
	- ES:
		- ADD ax, bx

		  MOV $[v]$, ax
		  DEC cx
		- viene modificata in:
			- ADD ax, bx 
			  DEC cx
			  MOV $[v]$, ax 
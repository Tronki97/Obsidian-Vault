---
tags: []
aliases:
  - memoria condivisa
  - memoria privata
data: "`2024-10-19 17:30`"
---
- # Interazioni tra processi:
	- I [[Concorrenza#^68dcd8||processi]] si classificano in base a quanto sono consapevoli uno dell'altro 
	- se sono ignari tra di loro si dicono _indipendenti_
	- Interagiscono in 2 modi:
		- Competono per le stesse risorse. 
		- si sincronizzano nel loro utilizzo. 
	- il [[Sistema operativo]] deve arbitrare questa competizione fornendo meccanismi di _sincronizzazione_ 
- # Modelli di interazione:
	- ## Memoria condivisa:
		- Più processi possono condividere la stessa memoria (stesse variabili ma non quelle nei record di attivazione dello stack visto che quelle rimangono _locali_)
			- comunicano tramite sincronizzazione. 
	- ## Memoria Privata:
		- I processi non condividono memoria
		- la sincronizzazione avviene tramite messaggi di _acknowledgement_ 
- # Link Utili:
	- 
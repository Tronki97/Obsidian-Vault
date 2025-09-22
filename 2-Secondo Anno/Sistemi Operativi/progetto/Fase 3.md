---
tags: []
aliases: 
data: "`2025-04-11 09:12`"
---
- # Argomento:
	-  si usa la support struct che non era mai stata usata
	- Si gestiscono le eccezioni che non vengono risolte in fase 2.
	- Gestione memoria principale, SYSCALL utente.
	- Il test consiste nel completare 8 brevi programmi forniti, che usano SYSCALL di fase 3 e vengono gestite dal PAGER.
	- PAGER:
	- Tutti i processi sono eseguiti in memoria virtuale.
		- Per fare il translate di indirizzi da virtuale a fisici si usa il TLB
			- Che ha la stessa struttura della swap pool table.
		- Quando si accede all’area di memoria virtuale quell’indirizzo viene mappato in quella fisica.
			- 1: se la corrispondenza c’è già la si usa semplicemente.
			- 2: se non c’è si fa il TLB-refill, che crea quell’associazione, per poi rivenire interrogato e se quell’associazione è valida la si utilizza.
				- Altrimenti avviene il _page fault_, e si guarda la swap pool 
	- Si può abilitare la TLB view in _uriscv_ 
- # inizializzazione:
	- Imposta le support struct
	- Si crea il primo processo, che userà le SYSCALL di fase 2 .
	- 
- # Link Utili:
	- 
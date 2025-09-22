---
tags: []
aliases: 
data: "`2024-11-29 09:34`"
---
- # Costruzione:
	- un modulo per gestire lo stack e uno per le code.
	- ![[Pasted image 20241129093629.png]]
	- ![[Pasted image 20241129093640.png]]
	- e in più serve un semaforo per la [[Proprietà di un programma#^1acdf8|mutua esclusione]] `mutex`
- # Implementazione:
	- ## Inizializzazione:
		- [[Semafori|semaforo]] `mutex` a 1
		- uno `stack urgent`
		- una coda `waiting[NCOND]` dove `NCOND` è il numero di condizioni questo è un array di code.
			- dentro alle strutture dati inserisco dei semafori
	- ## Entrata nel monitor:
		- `mutex.P()`
	- ## [[Monitor#^cac4f7|wait]] su $cond_i$
		- ![[Pasted image 20241129094049.png]]
		- `waiting[i].equeue(ws)` alla condizione `i` si mette in coda il processo `ws`
	- ## [[Monitor#^d57dae|signal]] su $cond_i$
		- ![[Pasted image 20241129094211.png]]
	- ## Esce dal monitor:
		- ![[Pasted image 20241129094235.png]]
		- se lo stack `urgent` è vuoto allora si esce dalla mutua esclusione
		- altrimenti si fa il `pop` del primo semaforo dello stack.
- # Link Utili:
	- 
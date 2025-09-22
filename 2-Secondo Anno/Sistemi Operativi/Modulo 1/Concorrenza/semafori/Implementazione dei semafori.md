---
tags: []
aliases: 
data: "`2025-01-18 16:36`"
---
- # Implementazione nei sistemi operativi:
	- ![[Pasted image 20250118163737.png]]
		- l’id del processo che viene bloccato viene messo in una coda d’attesa del semaforo.
		- `suspend(pid)` mette l’id in uno stato _waiting_
	- ![[Pasted image 20250118163917.png]]
		- `queue.remove()` rimuove un processo dalla coda d’attesa del semaforo secondo una politica specifica (_FIFO_, _LIFO_, ecc…)  restituendone l’id
		- `wakeup(pid)` mette il processo con quell’id nello stato ready.
- # Link Utili:
	- 
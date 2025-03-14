---
tags:
  - TODO
aliases: 
data: "`2025-03-13 17:18`"
---
- # Memory manager:
	-  gestisce la memoria principale, assegna e de-alloca la memoria ai processi.
	- Tiene traccia della memoria libera e occupata
	- è un componente software a differenza dell’MMU.
- # Binding:
	- Lo fa il compilatore.
	- Può avvenire durante:
		- ## Compilazione :
			- Indirizzi calcolati al momento della compilazione e saranno gli stessi durante tutto il programma 
			- Codice generato detto _assoluto_
				- Un esempio può essere il _kernel_
			- ![[Pasted image 20250313172457.png]]
			- Non richiede hardware speciale, veloce e semplice ma non funziona con la _multiprogrammazione_ perché 2 processi che eseguono lo stesso programma necessiterebbero di allocare la stessa cella di memoria.
		- caricamento:
			- Il codice generato dal compilatore non ha indirizzi assoliti ma relativi.
			- Codice detto _rilocabile_:
			- Il loader si occupa dei riferimenti ad indirizzi di memoria coerentemente al punto iniziale di caricamento
			- ![[Pasted image 20250313172935.png]]
			- Permette la multiprogrammazione non richiede hardware speciale, però gli serve una traduzione degli indirizzi da parte del loader e quindi di particolari file eseguibili
			- 
		- esecuzione.
			- Individuazione degli indirizzi effettuata durante l’esecuzione dalla _MMU_
- # Link Utili:
	- 
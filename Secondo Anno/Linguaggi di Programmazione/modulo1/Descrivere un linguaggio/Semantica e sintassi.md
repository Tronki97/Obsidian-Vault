- ## Sintassi:
	- I [[Vincoli sintattici]] le appartengono.
	- tutto quello che si descrive in [[Grammatiche||grammatiche libere]] 
- ## Semantica: ^78ca9a
	- I vincoli contestuali sono quindi vincoli "semantici", ovvero possono essere verificati ispezionando il codice del programma, _senza eseguirlo_ 
	- il compilatore delega questi controlli alla 3°fase detta [[Analisi semantica]].
	- ### Semantica statica: ^303459
		- insieme di quei controlli che possono essere fatti sul testo del programma _senza eseguirlo_:
			- ![[Pasted image 20240927185549.png]]
	- ### Semantica dinamica:
		- rappresentazione formale dell'esecuzione del programma, la quale _può mostrare errori durante l'esecuzione_:
			- ![[Pasted image 20240927185601.png]]
			- se l'utente mettesse il valore $0$ in input ci sarebbe un _errore in esecuzione_ siccome sta dividendo per $0$ 
		- Non si può capire, senza eseguire il codice, se l'errore si verificherebbe perché _il risultato dipenderebbe dall'utente_.
		- Si potrebbe fornire un modello matematico che descriva l'andamento del programma indipendentemente dall'architettura su cui viene eseguito.
		- #### A chi serve:
			- _Al programmatore_ che deve sapere esattamente cosa fa il suo programma e ne deve poter dimostrare le proprietà.
			- _Al progettista del linguaggio_: deve poter dimostrare le proprietà del suo linguaggio ed è utile come strumento di specifica del linguaggio.
			- _all'implementatore del linguaggio_: deve dimostrare la correttezza dell'implementazione.
	- ### Operazionale:
		- si costruisce una specie di automa che mostra l'esecuzione del codice passo passo.
		- _Come_ si calcola
	- ### Denotazionale:
		- ad ogni programma sequenziale si associa una funzione da input ad output
		- _cosa_ si calcola.
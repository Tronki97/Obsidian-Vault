---
tags:
aliases:
data: "`2025-04-24 13:40`"
---
- # Fallimenti e risultati:
	- Spesso si possono verificare degli errori che occasionalmente si necessita di strutturare e gestire
		- Il linguaggio dovrebbe dare il supporto per chi utilizza delle librerie di poter riconoscere e gestire l’errore.
	- Spesso, soprattutto nei sistemi operativi, si restituiva un codice per dire se un operazione era andata a buon fine.
	- ## Valori eccezionali:
		- Si controllano certi valori che sono usciti come risultato della funzione e si controlla che effettivamente facciano parte del codominio della funzione. 
	- ## Inversione del controllo:
		- So cosa va fatto quando c’è un errore, si passa un pezzo di codice che controlla la causa dell’errore e poi esegue quel pezzo di codice che viene passato.
- # Eccezioni:
	- Si basano sull’inversione del controllo ma si trasferisce il controllo al _gestore delle eccezioni_ che penserà lui ad eseguire il codice adatto per gestirle.
	- ## Gestione:
		- Per catturarla si usa un costrutto linguistico 
		- ![[Pasted image 20250424135854.png]]
			- Ciò significa che nel blocco `try` potrebbe esserci un errore del tipo specificato in `catch()` e in base a quello fare qualcosa.
			- Si adatta bene ai linguaggi con sistemi di tipi _nominali_ 
		- Gli `Error` e `RuntimeException` sono dei fallimenti irrecuperabili a livello _runtime_ e che interromperebbero l’esecuzione del programma quindi ogni volta che si implementa del codice che potrebbe generarli non viene richiesto di includerli in un `try-catch` perché _ci si aspetta che il programmatore conosca il funzionamento della sua implementazione_
		- Il codice nel blocco `try` viene eseguito fino all'insorgere dell'errore dopo il quale viene eseguito il codice nel blocco `catch` 
- # Link Utili:
	- 
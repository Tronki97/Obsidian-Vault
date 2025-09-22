---
tags: []
aliases:
  - scanner
  - Scanner
---

- ## Scanner:
	- spezza il programma in token e controlla che il linguaggio sia ammissibile
	- riempie parzialmente la tabella dei simboli
	- ### Realizzarlo:
		- necessita di grammatiche regolari del tipo:
			- $A\to aB$ oppure $A\to a$
		- espressioni regolari:
		- [[Automi a stati finiti]]:
			- uno strumento che permette di riconoscere i linguaggi regolari 
		- regex $\to$ [[Automi finiti non deterministici||NFA]] $\to$ [[Automi finiti deterministici||DFA]] 
		- serve trovare il DFA minimo per occupare meno memoria possibile che è _unico_ ed è equivalente al DFA da cui siamo partiti.
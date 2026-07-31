---
tags:
  - LdP
aliases:
  - scanner
---

- ## Scanner: ^ec1d70
	- spezza il programma in token e controlla che il linguaggio sia ammissibile utilizzando una [[Struttura di un compilatore#^80f144|tabella dei simboli]] che riempie parzialmente con tutti gli ID delle variabili, delle procedure, ecc...
	- Il suo output è una _lista di token_ 
	- ### Realizzarlo:
		- necessita di [[Grammatiche regolari]] del tipo:
			- $A\to aB$ oppure $A\to a$
		- espressioni regolari: 
			- che è un formalismo per descrivere linguaggi generati da [[Grammatiche regolari]]
		- [[Automi a stati finiti]]:
			- uno strumento che permette di riconoscere i linguaggi regolari 
		- regex $\to$ [[Automi finiti non deterministici||NFA]] $\to$ [[Automi finiti deterministici||DFA]] 
		- serve trovare il DFA minimo per occupare meno memoria possibile che è _unico_ ed è equivalente al DFA da cui siamo partiti.
---
tags: []
aliases:
  - diagramma di transizione
data: "`2024-10-03 13:06`"
---
- # Automi a stati finiti:
	- ## Caratteristiche:
		- memoria finita data dal numero degli stati
		- in _input_ ha una stringa da riconoscere e in _output_ ha un bit che dice se la stringa è riconosciuta come buona.
		- 
		- 
	- ## Descrizione iniziale:
		- controllo sullo stato iniziale $q_{0}$ 
		- la testina inizia dal primo carattere dell'input.
	- ## Funzionamento:
		- in base allo stato in cui si trova e al carattere in input decide se:
			- _cambiare stato_ 
			- _spostare la testina sull'input successivo_ 
		- tutto ciò è ripetuto finché ha finito di leggere l'input(e riconoscere che la stringa ha raggiunto lo stato terminale) oppure si blocca prima a causa di una condizione particolare come visto in [[Semantica operazionale strutturata]] in particolare nell'operazione (_sum3_) 
- # Diagramma di transizione: ^a25e73
	- è un modo in cui può essere descritto il funzionamento di un automa finito.
	- ![[Pasted image 20241005200304.png]]
	- ## Riconoscere una stringa w:
		- per riconoscere una striga _w_ serve trovare un cammino etichettato _w_ sul grafo partendo dallo stato iniziale e che finisca in quello finale
			- $L=\{a^{2n+1}\ |\ n\ge 0\}=\{a^{n}\ |\ n\ mod\ 2\ne0\}=L[a(aa)^{*}]$ 
			- N.B: se la stringa in input è $w= ab$ l'automa si blocca nello stato $q_{1}$ in quanto non potrebbe proseguire 
- # Link Utili:
	- 
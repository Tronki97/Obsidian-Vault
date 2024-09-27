---
tags:
---

```Pascal
var position, initial, rate: real
position:= initial+rate*60
```
- vediamo come viene trasformata l'espressione `position:= initial+rate*60` nelle varie fasi.
- ## [[Analisi lessicale]]
	- $id_{1}:=id_{2}+id_{3}*60$
	- $1,2,3$ sono gli indirizzi nella [[Struttura di un compilatore#^80f144||tabella dei simboli]]:
		- ![[Pasted image 20240927194635.png]]
- ## [[Analisi sintattica]]
	- ![[Pasted image 20240927194740.png]]
	- viene generato questo albero sintattico
- ## [[Analisi semantica]]
	- ![[Pasted image 20240927194824.png]]
	- siccome tutti gli $id$ sono `real` allora tutte le operazioni saranno su quel tipo di dato quindi si converte la costante $60$ in quel tipo.
- ## [[Struttura di un compilatore#^faab23||codice intermedio]]
	- ![[Pasted image 20240927195850.png]]
	- usa un "three-address code" come linguaggio intermedio. 
	- un temporaneo viene generato per memorizzare il risultato di ogni operazione 
- ## [[Struttura di un compilatore#^5dbd0b||ottimizzazione]]
	- ![[Pasted image 20240927200232.png]]
- ## Generazione del codice:
	- ![[Pasted image 20240927200308.png]]
	- Codice Assembler
	- "#" usato per dire che si tratta di una costante e non viene indirizzato in memoria
	- "F" sta per "floating-point arithmetics".
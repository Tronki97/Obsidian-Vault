---
tags:
aliases:
data: "`2024-09-17 15:09`"
---
- ## Preconcetto: ^7219a0
	- ### Funzione parziale:
		- $f:A\ -o \to B$ ovvero che può essere _non definita_ su qualche $a\in A$
	- $P_{r}^L$ indica un programma $P_{r}$ scritto in $L$ 
	- A $P_{r}^L$ corrisponde una funzione _parziale_ $P^{L}$ sull'insieme dei dati che rappresenta la _semantica_ del programma $P_{r}^L$ 
		- $P^{L}: D\to D$ ;   $P^{L}(Input)=Output$
	- ### ES:
		- $P_{r}^L=$ 
		```
			read(x);
			if(x==1) print(x)
			else while(true) do skip;
		```
		- La sua _semantica_ è come funziona da In ad Out
			- $P_{r}^L(x)=1$ se $x=1$, indefinito _altrimenti_  
- Scartando la [[MA (macchina astratta)#^584d6e||soluzione HW]] e assimilando _software_ e _firmware_
- ## Sono dati:
	- il linguaggio $L$ da implementare ovvero la realizzazione di una [[MA (macchina astratta)||macchina astratta]] $M_{L}$ 
	- una macchina astratta $Mo_{Lo}$ (_Macchina ospite_) con il suo linguaggio $Lo$ 
- ## Obiettivo: 
	- implementare $L$ su $Mo_{Lo}$ 
- ## Metodi:
	- ### Implementazione interpretativa pura:
		- $M_{L}$ è realizzata scrivendo un [[Interprete]] per $L$ su $Mo_{Lo}$ 
			- ![[Schema di un Interprete.png]]
		- #### Formalmente:
			- [[Interprete#^68f4bc||DEF]] o in sintesi: _calcola la corretta semantica_ del programma.
		- #### Caratteristiche:
			- _scarsa efficienza della macchina_ $M_{L}$ perché ai tempi di esecuzione vanno aggiunti i tempi necessari per decodificare. Quindi se la stessa istruzione viene eseguita più volte essa dovrà essere decodificata più volte.
			- _buona flessibilità_: si può interagire con l'esecuzione del programma ("debug dinamico")
			- _Facile da realizzare_: rispetto al compilatore che è più complesso
			- _Meno memoria occupata_: Perché non viene effettivamente generato codice da memorizzare.
		- Si può dire corretta se la semantica del linguaggio viene rispettata.
	- ### implementazione compilativa pura ^417ab4
		- I programmi in $L$ sono _tradotti_ in programmi equivalenti in $Lo$ 
		- la traduzione viene effettuata da un altro programma 
			- $C^{L_{a}}_{L,Lo}$ 
			- il _Compilatore_ da $L$ a $Lo$ scritto in $L_{a}$ 
			- ![[Schema di un compilatore.png]]
			- #### Formalmente: 
				- Un compilatore  da $L$ a $Lo$ è un programma che realizza una funzione $$C_{L,Lo}:Prog^{L}\to Prog^L$$
				  tale che dato un programma $P_{r}^{L}$, se: $$C_{L,Lo}(P_{r}^{L})=P_{r}^{L}$$
				  allora, $\forall$ Input $\in D$ $$P^{L}(Input)=Pc^{Lo}(Input) $$
				  - Ovvero il compilatore _preserva la semantica_ del programma: il programma originale $P_{r}^{L}$ e quello tradotto $P_{r}c^{Lo}$ calcolano la stessa funzione: $P^{L} = Pc^Lo$ 
			- #### Caratteristiche:
				- Difficile da implementare data la lontananza da $L$ a $Lo$ 
				- _Efficiente_:
					- 1) Costo decodifica a carico del compilatore 
					- 2) Ogni istruzione è tradotta una sola volta.
				- _Poco flessibile_
				- _perdita_ di info sulla struttura del programma sorgente 
				- occupazione di memoria del codice prodotto.
		- Si può dire corretta se la semantica del linguaggio viene rispettata.
	- _Nella realtà si fa un mix di entrambi questi metodi a seconda delle esigenze_.
		- Un esempio è [[Java]] prima compilato in _Bytecode_ poi interpretato dalla JVM 
		- ![[Implementazione del linguaggio Java.png]]
		- 
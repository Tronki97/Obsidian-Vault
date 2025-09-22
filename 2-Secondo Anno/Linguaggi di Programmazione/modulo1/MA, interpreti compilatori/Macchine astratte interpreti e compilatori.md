---
tags:
aliases:
data: "`2024-09-14 00:31`"
---
- Una macchina fisica _MF_ esiste per eseguire il suo _linguaggio_. 
- Un linguaggio però può essere eseguito su più macchine. 
- Una MF è la realizzazione di un particolare algoritmo che ha il nome di _[[Interprete]]_ che, usando alcune strutture dati, è in grado di eseguire programmi scritti in un certo linguaggio detto [[Linguaggio macchina||macchina]] che può essere [[Implementare un linguaggio||implementato]] in diversi modi. 
- ## Definizioni:
	- *$I^{Lo}_{L_{1}}$* è un [[Interprete]] scritto in $Lo$ che esegue programmi scritti in $L_{1}$ 
		- la macchina ospite è $M_{Lo}$, mentre la [[MA (macchina astratta)||macchina astratta]] realizzata su di essa dall'interprete è $M_{L_{1}}$
	- $I^{Lo}_{L_{1}}(P^{L_{1}},x)$ = risultato del calcolo del programma $P$ (scritto in $L_{1}$) con $x$ come input.
	- $C^{Lo}_{L_{1},L_{2}}$ è un [[Implementare un linguaggio#^417ab4||compilatore]] scritto in $Lo$ che traduce programmi scritti in $L_{1}$ in programmi equivalenti scritti in $L_{2}$
	- $I^{Lo}_{L_{1}}(C^{L1}_{L_{2},L_{3}} ,P^{L_{2}})=P_{1}^{L_{3}}$ ovvero l'interprete eseguito sulla macchina ospite $M_{Lo}$ realizza la macchina astratta $M_{L_{1}}$ ed esegue un compilatore (scritto in $L_{1}$) che traduce il programma $P$ (scritto in $L_{2}$) in un programma equivalente $P_{1}$ scritto in $L_{3}$ 
- ## Esercizi:
	- $$I^{Lo}_{L_{1}}(C^{L1}_{L_{2},L_{3}} ,C^{L_{2}}_{L_{3},Lo})=C^{L_{3}}_{L_{3},Lo}$$
	- $$I^{Lo}_{L_{1}}(C^{L1}_{L_{0},L_{2}} ,I^{L_{0}}_{L_{1}})=I^{L_{2}}_{L_{1}}$$
	- $$I^{Lo}_{L_{1}}(C^{L2}_{L_{0},L_{1}} ,C^{L_{0}}_{L2,L1})=ERRORE$$ 
		- Perché l'interprete non può eseguire programmi scritti in $L2$ 
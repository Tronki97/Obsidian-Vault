---
tags:
aliases:
  - radice primitiva
data: "`2026-03-10 19:57`"
---
- # Radice primitiva:
	- Un numero $a$ è una _radice primitiva_ modulo $p$ se ogni numero $g$ _coprimo_ a $p$ è congruente alla potenza di $a$ modulo $p$ 
	- Quindi $a$ è una _radice primitiva_ modulo $p$ se per ogni intero $g$ coprimo a $p$ esiste qualche intero $k$ per il quale vale $a^{k} \equiv g \ (mod\ p)$
	- Questo valore $k$ è chiamato l'_indice_ o _logaritmo discreto_ di $g$ con base $a$ modulo $p$
	- Quindi una radice primitiva di un numero primo $p$ è quella la quale le potenze modulo $p$ generino tutti gli interi da $1$ a $p-1$
	- Se $a$ è una _radice primitiva_ del numero primo $p$ allora i numeri $a\ mod\ p$, $a^{2}\ mod \ p$,..., $a^{p-1}\ mod\ p$ sono tutti distinti e consistono in _interi_ da $1$ a $p-1$ in una qualche permutazione 
	- Per ogni intero $b$ e _radice primitiva_ $a$ di un numero primo $p$ si può trovare un _esponente unico_ $i$ tale che:
		- $$b\equiv a^{i} \ mod \ p$$
			- Con $0\le i \le (p-1)$
	- $i$ fa riferimento al _logaritmo discreto_ di $b$ per la base $a\ mod\ p$
- # Link Utili:
	- 
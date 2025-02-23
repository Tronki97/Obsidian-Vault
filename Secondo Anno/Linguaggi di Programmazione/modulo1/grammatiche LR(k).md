---
tags:
  - TODO
aliases: 
data: "`2024-11-26 11:07`"
---
- # Def:
	- item LR(k): $[item LR(0), \beta]$
		- $\beta$ carattere di look ahead $\le k$
	- item iniziale $[S' \to .S, \$]$ 
	- tabella con colonne su $T\cup \$,$ con in più le stringhe a cui è possibile fare il reduce e per  righe gli stati. 
		- la tabella contiene al più una azione per ogni entrata 
		- se $[A\to \alpha.]\in s$ e $A\ne S'$ inserisco la reduce $A\to \alpha$ in $M[s,w]$ per tutti i $w \in Follow_{k}(A)$ 
- # Prop:
	-  $G è LL(K)\implies$ G è non ambigua e  $L(G)$ è deterministico.
	- $G è LR(K)\implies$ G è non ambigua e  $L(G)$ è deterministico.
- # Applicazioni:
	- un linguaggio è di una certa classe $X$ se esiste una G di classe $X$ che lo genera.
	- ## ES:
		- ![[Pasted image 20241126112447.png]]
		- non è $LR(k)$ per nessun k infatti non può sapere quando fare la reduce $A\to b$ e deve capire qual è il punto intermedio per farlo dovrebbe leggere tutta la stringa in input.
		- però questo linguaggio ($\{ab^{2n+1}c|n\ge0\}$) è $LR(0)$ 
			- ![[Pasted image 20241126112722.png]]
			- perché viene generato fa questa grammatica $LR(0)$ 
			- 
- # Link Utili:
	- 
---
tags:
  - LdP
aliases:
  - classe
  - grammatiche LL(k)
data: "`2025-08-04 13:08`"
---
- # Classe di una grammatica:
	- Quindi la grammatica $G=S\to aSb|\epsilon$   è considerata come una grammatica $LL(1)$ che consente di costruire un [[PDA deterministico|DPDA]] / [[Parser]] 
		- $LG(n)$ (_generalizzazione mia di_ $LL(1)$) si compone di:
			- L= modo in cui viene letto l’input
			- G= tipo di derivazione 
			- $n$ = numero di simboli _look-ahead_
	- Con una grammatica:
		- $$G= S\to aSb|ab$$ 
	  Si guardano 2 simboli _look-ahead_
		-  se leggo $aa \implies$ _espando_ $S\to aSb$
		- se leggo $ab \implies$ _espando_ $S\to ab$ 
		- Quindi G e di classe $LL(2)$ 
- # Link Utili:
	- 
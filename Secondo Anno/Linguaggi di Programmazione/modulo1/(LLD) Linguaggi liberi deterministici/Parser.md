---
tags: []
aliases: 
data: "`2024-10-30 18:22`"
---
- # Richiami
	- [[Analisi sintattica]] 
- # Parser:
	- sono fondamentalmente dei [[PDA deterministico|DPDA]] con output.
	- ## Non deterministici:
		- se durante la ricerca di una derivazione viene eseguito del *backtracking*, quindi si sceglie un’altra produzione (o regola) tornando a leggere parte dell’input
	- ## Deterministici:
		- Ogni decisione presa nella lettura dell’input è definitiva
	- ## Top-down:
		- ricostruiscono una [[Derivazioni||derivazione]] _leftomost_ per input $w$ a partire da un simbolo $S$ (in cima allo stack).
	- ## Bottom-up:
		- ricostruiscono una [[Derivazioni||derivazione]] _rightmost_ per input $w$ a partire da un simbolo $S$ (in fondo allo stack).
- # Link Utili:
	- 
---
tags: []
aliases: 
data: "`2025-04-06 20:06`"
---
- # Def:
	- Un processo o un sistema si dice che è in _trashing_ quando spende più tempo per la paginazione che per l’esecuzione.
- # Cause:
	- In un sistema con allocazione globale, avviene perché i processi provano continuamente a rubarsi i frame a vicenda.
		- Ovvero non riescono a tenersi in memoria i frame utili a breve termine e quindi generano dei _page fault_ frequentemente.
- # ES:
	- Prendo in esame un sistema che accetta nuovi processi quando la CPU viene usata poco.
	- Statisticamente tanti processi generano una page fault:
		- La _ready queue_ si riduce ed il sistema diventa disponibile ad accettare nuovi processi _il che è un errore_
	- Il sistema quindi:
		- Genererà molte page fault e di conseguenza si riduce la [[Concorrenza#^ecbe27|multiprogrammazione]]
- ![[Pasted image 20250406195805.png|700]]
- # Link Utili:
	- 
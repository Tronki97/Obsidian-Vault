---
tags:
aliases:
data: "`2026-04-24 19:22`"
---
- # Gerarchia:
	-  ![[Pasted image 20260424192310.png]]
		- [[Complessità spaziale#^4ee054|NL]] $\subseteq$ [[Classi di complessità#^78c582|P]]:
			- avendo che [[Complessità spaziale#^4d4221|REACH]] è [[Complessità spaziale#^7f6e94|NL-completezza]] e quindi ogni linguaggio in NL è riducibile in spazio logaritmico a REACH e inoltre essendoci un algoritmo che risolve REACH in tempo polinomiale deterministico ovvero l'[[Algoritmo di Dijkstra]] avrò che $REACH \in P$ ma siccome è $NL-$completo allora $NL\subseteq P$ 
		- $L \subseteq P$:
			- lo è per definizione che $L\subseteq NL$ 
		- [[Classi di complessità#^488c5d|NP]] $\subseteq$ [[Complessità spaziale#^303f0e|PSPACE]]:
			- se $L\in NP$ vuol dire che esiste una [[Macchina di Turing non-deterministica]] che lo decide in tempo polinomiale e quindi non potrà usare più di un numero polinomiale di celle quindi $L\in NPSPACE$ ma $NPSPACE=PSPACE$ 
			- QED 
		- [[Altre classi di complessità temporale#^eb6fff|CO-NP]] $\subseteq PSPACE$:
			- sia $L\in CO-NP$ quindi ho che $\bar{L}\in NP$, per la dimostrazione precedente so che $\bar{L}\in PSPACE$ quindi esiste una [[Macchina di Turing deterministica]] $M$ che decide $\bar{L}$ in _spazio polinomiale_, di conseguenza è possibile costruire una $MdT$ con gli stati di accettazione e rigetto invertiti in modo tale che riconosca $\bar{\bar{L}}=L$ in spazio polinomiale
			- quindi $L\in PSPACE$ e $CO-NP\subseteq PSPACE$ 
		- $PSPACE \subseteq$ [[Altre classi di complessità temporale#^65b187|EXP]]:
			- ogni MdT deterministica che decide un linguaggio $L$ usando $O(n^c)$ celle non potrà visitare più di $O(2^{n^{c}})$ [[Macchina di Turing deterministica#^e83938|ID]] 
			- e quindi la macchina richiederà tempo esponenziale per decidere $L$ 
- # Link Utili:
	- 
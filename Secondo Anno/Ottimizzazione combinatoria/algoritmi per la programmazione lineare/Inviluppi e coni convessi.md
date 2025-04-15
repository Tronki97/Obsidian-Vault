---
tags: 
aliases:
  - politopo
data: "`2025-04-14 19:26`"
---
- # Inviluppi convessi:
	- Si possono rappresentare i [[Algoritmi programmazioni Lineare#^ab0205|poliedri]] anche per _punti_ non solo per [[Algoritmi programmazioni Lineare#^99c600|facce]]
	- Come costruire il più piccolo poliedro che contenga questi punti senza per forza indicarne i [[Algoritmi programmazioni Lineare#^a0d9ff|vertici]].
		- Insieme di tutte le [[Combinazione lineare]] di questi punti che sommano ad 1 
		- $$conv(X)=\{x= \sum\limits_{i=1}^{s} \lambda_{i} x_{i}| \sum\limits_{i=1}^{s} \lambda_{i} =1\wedge \lambda_{i}\ge0\}$$
	- Questo è definito come _politopo_ ovvero un poliedro limitato in cui i vertici sono tutti in _X_
	- ## ES:
		- $X = \{(1, 3), (3, 1), (2, 5), (6, 3)\}$
		- ![[Pasted image 20250414094554.png]]
		- ![[Pasted image 20250414094703.png]]
		- Questo vuol dire che _non tutti i punti dell’insieme di $X$ sono vertici del politopo_
- # Coni convessi:
	- I coni interessanti sono quelli che sono anch’essi [[Algoritmi programmazioni Lineare#^5799ac|insieme convesso]] ovvero che rispettano il vincolo sulla convessità.
		- $$x,y \in C \wedge \lambda, \mu \in \mathbb{R}^{+} \implies \lambda x +\mu y \in C$$
	- Si può anche avere una rappresentazione dei coni basata sulle direzioni avendo un _cono finitamente generato dall’insieme V_
		- $$cono(V)=\{v= \sum\limits_{i=1}^{t} \nu_{i}v_{i}|\nu_{i}\in \mathbb{R}^{+}\}$$
- # Link Utili:
	- 
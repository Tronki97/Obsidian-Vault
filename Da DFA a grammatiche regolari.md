---
tags: []
aliases: 
data: "`2024-10-08 19:08`"
---
- # Teorema:
	- da un [[Automi finiti deterministici||DFA]] $M$, posso definire una [[Grammatiche regolari||grammatica regolare]] $G_{M}$ tale che: 
		- $$L[M]=L(G_{M})$$
- # Dim:
	- Sia $M=(\Sigma,Q, \delta, q_{0}, F)$ il DFA. la grammatica $G_{M}=(Q, \Sigma, R, q_{0})$ ha:
		- come NT gli stati di $M$ 
		- come T l'alfabeto $\Sigma$ si $M$ 
		- come $S$ lo stato iniziale di $M$ 
		- come produzioni $R$:
			- $\forall \delta(q_{i},a)=q_{J}$ la produzione $q_{i}\to aq_{J}\in R$ 
			  inoltre se $q_{J}\in F$ anche $q_{i}\to a\in R$ 
			- $q_{0}\in F \implies( q_{0}\to \epsilon) \in R$ 
- # ES:
	- ![[Pasted image 20241008191424.png||700]]
	- secondo la costruzione appena descritta:
		-  ![[Pasted image 20241008191509.png]]
- # Link Utili:
	- 
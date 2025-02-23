---
tags:
  - linguaggi
aliases:
  - DPDA
data: "`2024-10-29 17:00`"
---
- # Def:
	- Un [[Automi a Pila (PDA)|PDA]] $N=(\Sigma, Q, \Gamma, \delta, q_{0}, \bot, F)$ è _deterministico_ (_DPDA_) sse:
		- (1) $\forall q\in Q, \ \forall z\in \Gamma,\  \forall a\in \Sigma$ 
			- $$\delta(q,\epsilon,z)\ne \emptyset \implies \delta(q,a,z)= \emptyset$$  
		- (2)  $\forall q\in Q, \forall z\in \Gamma, \forall a\in \Sigma\cup \{\epsilon\}$ 
			- $$|\delta(q,a,z)|\le 1$$
- # Link Utili:
	- 
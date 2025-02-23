---
tags:
  - TODO
aliases:
  - shift
  - reduce
  - accept
  - Shift
  - Reduce
  - Accept
data: "`2024-10-30 19:02`"
---
- # Def:
	- data $G=(NT, T, S, R)$ *libera*  , costruisco il [[Automi a Pila (PDA)|PDA]] 
		- $$M=(T, \{q\}, T\cup NT\cup \{z\}, \delta,q, z, \emptyset)$$
			- che riconosce $L(G)\cdot {\$}$  
	- dove:
		- $$\forall a\in T, \forall X\in T\cup NT\cup \{z\} \ \ \ (q,aX)\in \delta(q,a,X)$$
			- *SHIFT* 
		- $$A\to \alpha \in R \implies (q, A)\in \delta(q,\epsilon, \alpha^{R})$$
			- _REDUCE_
			- $\alpha^{R}$ è una generalizzazione dei *PDA* in cui si consuma una stringa sulla pila invece di solamente il _top_   
		- $$(q, \epsilon)\in \delta(q,{\$}, SZ)$$
			- _ACCEPT_ 
			- “$” è il simbolo di fine input
			- $S$ deve essere alla fine sulla pila.
- # ES:
	- guardare l’esempio a pagina 13 di https://virtuale.unibo.it/pluginfile.php/2199266/mod_resource/content/0/Lez12-Gorrieri.pdf fino alla fine delle slide.
- # Link Utili:
	- 
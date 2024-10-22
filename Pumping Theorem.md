---
tags:
  - TODO
aliases: 
data: "`2024-10-22 18:08`"
---
- # Def:
	- Se $L$ è libero $\implies \exists N>0: \forall z\in L \ \ con\ \ |z|\ge N$ 
	- $\exists u,v,w,x,y$ tali che:
		- 1) $z=\mathbf{uvwxy}$
		- 2) $|vwx|\le N$
		- 3) $|vx|\ge 1$
		- 4) $\forall k\ge 0$    $\mathbf{uv^{k}wx^{k}y}\in L$
	- ## Dim:
		- Sia $G$ una [[Grammatiche#^c95cdc||grammatica libera]] tale che $L=L(G)$ 
		- sia $b$ il massimo numero di simboli che compaiono nella parte destra di una regola $R$ 
			- $b=max\{|\alpha|\ \ |\ A\to \alpha\in R\}$ 
			- $b\ge2$ altrimenti la grammatica sarebbe _banale_
		- Fissato $N=b^{|NT|+1}$ allora ogni [[Alberi di derivazione]] per $z$ con $|z|\ge N$ deve avere altezza $|NT|+1$ 
		- Preso un qualunque $z\in L$ con $|z|\ge N$ considero il suo albero di derivazione:
			- ![[Pasted image 20241022181749.png]]
			- 
- # Link Utili:
	- 
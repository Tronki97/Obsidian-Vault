---
tags: []
aliases: 
data: "`2024-08-31 20:05`"
---
- # Def:
	- La dimensione di uno [[Spazio vettoriale]] V è il numero di elementi delle [[Base||basi]] di V si indica con: 
		- $$dim(V)$$
	- Quando V è finitamente generato allora si dice di _dimensione finita_
- # Esempi base:
	- $dim(\mathbb{R}^n)=n$
	- $dim(\mathbb{R}_{n}[x])=n+1$
	- $dim(M_{m\times n}(\mathbb{R}))=m\cdot n$
- # ES:
	- dato $W = \langle(1,3,4,0), (2,1,-5,7)\rangle\leq \mathbb{R}^4$ ovvero un sottospazio generato da quei due vettori. Questi sono linearmente indipendenti, per cui sono base di W. Quindi $dim(W)=2$
- # Proprietà:
	- 1)$dim(W)\leq dim(V)$
	- 2)$dim(W) = dim(V)\Longleftrightarrow W=V$   ^bf4054
	- ## Dimostrazione
		- 1)$$dim(W)\leq dim(V)$$
			- sia $\beta_{w}=w_{1},...,w_{n}$ base di W, e sapendo che $W \leq V$ per la definizione di [[Sottospazio generato||sottospazio]] $w_{1},...,w_{n}$ sono linearmente indipendenti. Presa $\beta_{v}=v_1,...,v_{r}$ base di V, per il [[Teorema del completamento]] ho che $n\leq r$ e quindi $dim(W)\leq dim(V)$ 
		- 2)$$dim(W) = dim(V)\Longleftrightarrow W=V$$
			- $\implies )$ 
				- dall'ipotesi abbiamo che: prese le basi $\beta_{w}=w_{1},...,w_{n}$ di W e $\beta_{v}=v_1,...,v_{r}$ di V, n=r. Per cui per il teorema del completamento posso aggiungere ad $(w_{1},...,w_{n})$,  $n-r=0$ vettori per ottenere una base di V, quindi anche $V=\langle\beta_{w}\rangle$. si ottiene che:
					- $$W=\langle\beta_{w}\rangle=V$$
			- $\Longleftarrow$) 
				- per ipotesi W=V quindi per il [[Base#^teorema degli elementi di una base||teorema degli elementi di una base]] abbiamo che $\beta_{w}$ e $\beta_v$ hanno lo stesso numero di elementi e perciò:
					- $$dim(W)=dim(V)$$
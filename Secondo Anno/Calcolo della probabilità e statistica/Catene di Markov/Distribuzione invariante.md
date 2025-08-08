---
tags: []
aliases: 
data: "`2025-05-21 12:13`"
---
- ## Distribuzione invariante:
	- Sia $(X_{n})_{n}$ con matrice di transizione $\Pi$ e spazio degli stati con $|S|=N$
	- Sia $\vec \nu=(\nu_{1},...,\nu_{n})$: 
		- 1) $\nu_{i}\in [0,1]\ \ \ \forall i=1,.., n$
		- 2)  $\sum\limits_{i=1}^{N} \nu_{i}=1$ 
	- Allora si dice che $\vec \nu$ è una distribuzione invariante per la catena se:
		- $$\vec \nu = \vec \nu \Pi$$
		- Ovvero:
		- $(\nu_{1},\nu_{2},...,\nu_{n})=(x_{1},...,x_{n})$
		- $$\begin{cases}\nu_{1}=x_{1}\\ \nu_{2}=x_{2}\\ \vdots \\ \nu_{n}=x_{n}\end{cases}$$
	- ### OSS:
		- Sia $\vec p_{X_{1}}$ distribuzione invariante per $\Pi$:
			- $$\vec p_{X_{1}} = \vec p_{X_{1}} \Pi$$
		- Sappiamo che $\vec p_{X_{n}}= \vec p_{X_{1}} * \Pi^{n-1}=$
			- Dove $\Pi^{n-1}$ è la probabilità di transizione in $n-1$ passi
		- $$=\vec p_{X_{1}} \Pi * \Pi^{n-2}=$$
			- Ma dall'ipotesi so che $\vec p_{X_{1}} = \vec p_{X_{1}} \Pi$ quindi diventa:
		- $$=\vec p_{X_{1}}* \Pi^{n-2}=$$
		- E così via fino a diventare:
			- $$\vec p_{X_{1}}\ \ \ \forall n\in N$$
- # Link Utili:
	- 
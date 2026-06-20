---
tags: []
aliases: 
data: "`2024-08-31 20:05`"
---
- # Def:
	- Si definisce _base ortonormale_ di uno [[Spazio vettoriale]] $\mathbb{R}^{n}$ una [[Base]] di $n$ vettori ortonormali $v_1,...,v_n$, per cui vale che:
		- $$<v_{i}​,v_{j}​>=\delta_{ij}=\begin{cases}1 \ \ \ i=j\\0 \ \ \ i\ne j\end{cases} \ \ \ \forall i,j\in1,...,n$$
	- Ovvero il [[Prodotto scalare Euclideo||prodotto scalare]] _a due a due_ di ogni vettore della base sia uguale al _delta di kronecker_, ossia 
		- $$1\iff v_{i}=v_{j}\iff i=j $$
	- Oppure 
		- $$0\iff v_{i}\ne v_{j}\iff i\ne j $$
	- Si nota la differenza con la [[Base ortogonale]], per cui non è richiesto che $||v_{i}||=1$ perché i vettori della base non devono essere normalizzati.
- # ES:
	- Prendo $e_{1},e_{2}\in \mathbb{R}^{2}:$ questi formano una base ortonormale, non per niente quella [[Base Canonica||canonica]]. Così come $e_{1},e_{2},e_{3}\in \mathbb{R}^{3}$. In generale si dice che $e_{1},...,e_{n}$ è base ortonormale di $\mathbb{R}^{n}$
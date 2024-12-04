---
tags: []
aliases: 
data: "`2024-08-31 20:05`"
---
- # Def:
	- Si definisce _base ortonormale_ di uno [[Spazio vettoriale]] $\mathbb{R}^{n}$ una [[Base]] di $n$ vettori ortonormali $v_1,...,v_n$, per cui vale che:$$<v_{i}​,v_{j}​>=\delta_{ij}=\begin{cases}1 \ \ \ i=j\\0 \ \ \ i\ne j\end{cases} \ \ \ \forall i,j\in1,...,n$$Ovvero il [[Prodotto scalare Euclideo||prodotto scalare]] _a due a due_ di ogni vettore della base sia uguale al _delta di kronecker_, ossia$$1\iff v_{i}=v_{j}\iff i=j $$Oppure $$0\iff v_{i}\ne v_{j}\iff i\ne=j $$Si nota la differenza con la [[Base ortogonale]], per cui non è richiesto che $||v_{i}||=1$ perché i vettori della base non devono essere normalizzati.
- # ES:
	- Prendo $e_{1},e_{2}\in \mathbb{R}^{2}:$ questi formano una base ortonormale, non per niente quella [[Base Canonica||canonica]]. Così come $e_{1},e_{2},e_{3}\in \mathbb{R}^{3}$. In generale si dice che $e_{1},...,e_{n}$ è base ortonormale di $\mathbb{R}^{n}$
- # Proposizioni
	- ## Lineare indipendenza
		- Siano $v_1,...,v_{k}\in \mathbb{R}^{n}$ vettori non nulli e a due a due ortogonali, allora $v_1,...,v_{k}$ sono [[Indipendenza lineare||linearmente indipendenti]].
		- Come corollario si ha che, per il [[Teorema del completamento]], _il numero massimo di vettori non nulli di $\mathbb{R}^{n}$ ortogonali tra loro è $n$_
		- ### Dimostrazione
			- devo dimostrare l'indipendenza lineare di $v_1,...,v_{k}$ allora uso la definizione e dimostro:$$\lambda_1 v_1+...+\lambda_{k} v_{k}=\underline{0}\iff \lambda_{1},...,\lambda_{k}=0$$Prendo in considerazione solo il caso$$<\underline{0},v_{1}>=0$$Allora sostituisco il vettore nullo con $\lambda_1 v_1+...+\lambda_{k} v_{k}$ e dimostro che $$<\lambda_1 v_1+...+\lambda_{k} v_{k},v_{1}>=0$$ Per la bilinearità del prodotto scalare posso scrivere che$$\lambda_{1}<v_{1},v_{1}>+...+\lambda_{k}<v_{k},v_{1}>=0$$Es essendo i vettori ortogonali a due a due ho che $<v_{i},v_{1}>=0 \ \ \forall i\ne0$ e mi rimane che$$\lambda_{1}<v_{1},v_{1}>=0$$Ed essendo $v_{1}$ non nullo per ipotesi allora il risultato viene $\iff$ $$\lambda_{1}=0$$
			- Se ripeto questo procedimento per tutti i $k$ vettori si ottiene che ogni scalare $\lambda$ è uguale a $0$
	- ## Coordinate rispetto a una base
		- Sia $\beta=v_1,...,v_n$ una base ortonormale di $\mathbb{R}^{n}$, allora preso un vettore $v \in \mathbb{R}^{n}$ si ha che $$v_{\beta}=(<v,v_{1}>,...,<v,v_{n}>)$$Ovvero che le sue [[Coordinate rispetto a una base]] $\beta$ sono il prodotto scalare tra $v$ e ogni vettore della base
		- ### Dimostrazione:
			- so che $v$ è [[Combinazione lineare]] di $v_1,...,v_n$, ovvero$$v=\lambda_1 v_1+...+\lambda_n v_n$$Per cui, per definizione di coordinate, devo solo dimostrare che $\lambda_{1}=<v,v_{1}>,...,\lambda_{n}=<v,v_{n}>$. 
			- Preso un generico $v_{i}$ dimostro $<v,v_{i}>=la_{i}$$$<v,v_{i}>=<\lambda_1 v_1+...+\lambda_n v_n,v_{i}>$$che per bilinearità del prodotto scalare diventa$$<v,v_{i}>=\lambda_{1}<v_{1},v_{i}>+...+\lambda_{i}<v_{i},v_{i}>+...+\lambda_{n}<v_{n},v_{i}>$$Quindi essendo $v_1,...,v_n$, ortonormali tra loro (con risultato del prodotto scalare = $0$), rimarrà soltanto $<v_{i},v_{i}>=1$ per cui $$<v,v_{i}>=\lambda_{i}*1=\lambda_{i}$$
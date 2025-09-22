---
tags: []
aliases:
  - autovettori
data: "`2024-08-31 20:05`"
---
- # Argomento:
	- Sia $f:\mathbb{R}^{n} \rightarrow \mathbb{R}^{n}$ un'[[Applicazione lineare]], allora un vettore $v\in \mathbb{R}^{n}$ si dice _autovettore_ di [[Autovalore]] $\lambda\in \mathbb{R}$ se per $v\ne \underline{0}$ si ha che:$$f(v)=\lambda v$$Un'applicazione lineare deforma lo spazio dei vettori su ci viene applicata. Alcuni vettori rimangono nello stesso [[Sottospazio generato]] ($Span$)_mantenendo quindi la loro direzione_ : vengono _mappati in un multiplo di loro stessi_.
	- ## Importanza
		- Di una [[Matrici||matrice]] che [[Applicazioni lineari definite da una matrice||identifica un'applicazione lineare]] vogliamo fare il [[Cambio di base]] in modo che tale matrice sia _diagonale_, per questioni di comodità. Ebbene questa base, affinché la matrice associata sia diagonale, dovrà essere composta da autovettori in colonna.
		  Per cui se esiste una base di questo tipo, l'applicazione lineare definita da questa matrice si dice [[Diagonalizzabilità||diagonalizzabile]]
- # Calcolare gli autovettori:
	- avendo la matrice $$A=  \begin{pmatrix}2 & 1 & 0 \\ 1 &3&1\\ 0&1&2\end{pmatrix}$$
	- gli autovalori risultanti sono $\lambda_{1}=1$, $\lambda_{2}=4$, $\lambda_{3}=2$ 
	- per trovare gli autovettori associati a questi autovalori si risolve il sistema lineare: $$(A-\lambda_{i} I)v=0$$
	- ## $\lambda_{1}$:
		- si ha che $A-\lambda_{1} I= \begin{pmatrix}1 & 1 & 0 \\ 1 &2&1\\ 0&1&1\end{pmatrix}$
	    - si risolve il sistema lineare:$$\begin{cases} x+y=0 \\ x+2y+z=0 \\ y+z=0 \end{cases}$$
	    - la matrice risulta di rango 2 e per il [[Teorema di Rouché-Capelli]] si ha che il sistema ha $\infty^{3-2}=\infty^{1}$ soluzioni dipendenti da 1 parametro, e quindi ha almeno un autovettore associato a $\lambda_{1}$.
		 - risolvendo si ha che l’autovettore associato a $\lambda_{1}$ $$v_{1}= (1, -1,  1)$$
    - $\lambda_{2}$:
	    - si ha che $A-\lambda_{2} I= \begin{pmatrix}-2 & 1 & 0 \\ 1 &-1&1\\ 0&1&-2\end{pmatrix}$
	    - riduco a scala la matrice:
		    - $$\begin{pmatrix}-2 & 1 & 0 \\ 1 &-1&1\\ 0&1&-2\end{pmatrix} \to \begin{pmatrix}1 & -1 & 1 \\ 0 &1&-2\\ 0&0&0\end{pmatrix}$$
		    - si ha che il sistema ha rango 2 e quindi ha almeno un autovettore associato a $\lambda_{2}$. 
		 - Risolvendo si ha che l’autovettore associato a $\lambda_{2}$ $$v_{2}= (1, 2,  1)$$ 
	- $\lambda_{3}$
		- si ha che $A-\lambda_{3} I= \begin{pmatrix}0 & 1 & 0 \\ 1 &1&1\\ 0&1&0\end{pmatrix}$
		- riduco a scala la matrice: 
			- $$\begin{pmatrix}0 & 1 & 0 \\ 1 &1&1\\ 0&1&0\end{pmatrix} \to \begin{pmatrix}1 & 1 & 1 \\ 0 &1&0\\ 0&0&0\end{pmatrix}$$
				- si ha che il sistema ha rango 2 e quindi ha almeno un autovettore associato a $\lambda_{3}$.
		- Risolvendo si ha che l’autovettore associato a $\lambda_{3}$ $$v_{3}= (-1, 0,  1)$$

---
tags:
  - TODO
aliases: 
data: "`2024-10-21 13:17`"
---
- # Intro:
	- ho sempre dei punti sul piano cartesiano ma al posto di avere una retta che passa per minimo 2 punti ho una curva sempre creata da un _polinomio_ 
	- per approssimare una funzione $f(x)$ sconosciuta di cui conosco solo dei punti $(x_{i},f(x_{i}))$ _costruisco un polinomio_ $P(x)$che la approssimi: _interpolazione_
- # Def:
	- ho $n+1$ punti $(x_{i},y_{i})$distinti $x_{0}<x_{1}<...<x_{n}$ questi punti sono chiamati _nodi_ 
	- _il problema dell'interpolazione_ sta nel trovare :
		- $$p(x):p(x_{k})=y_{k}|\forall k=0...n$$
- # Pol di interpolazione:
	- _metodo 1_: per calcolarne i coefficienti basta risolvere il sistema lineare:
		- $$\begin{cases}c_{0}+c_{1} x_{1}+...+c_{n}x_{1}^{n}=y_{1}\\ c_{0}+c_{1} x_{2}+...+c_{n}x_{2}^{n}=y_{2}\\ ...\\ c_{0}+c_{1} x_{n}+...+c_{n}x_{n}^{n}=y_{n}\end{cases}$$
		- ci sono $n+1$ incognite con $n+1$ equazioni. 
		- ma in questo modo si ha un costo computazionale di $O\left( \frac{n^{3}}{3} \right)$
	- _metodo 2_: definisco dei polinomi di grado $n$ $\phi_{k}(x):$
		- $$\phi_{k}(x_{j})=1 \iff k=j$$
		- altrimenti vale 0.
		- $$\phi_{k}(x)= \prod_{j=0,j\ne k}^{n}\frac{x-x_{j}}{x_{k}-x_{j}}, \ \ j=0...n$$
		- Calcolare tutti questi polinomi ha costo [[Complessità computazionale]] $O(n^{2})$ 
- # Link Utili:
	- 
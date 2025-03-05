---
tags: []
aliases: 
data: "`2025-03-02 19:20`"
---
- ## Formula delle probabilità totali:
	- ![[Pasted image 20250302191052.png]]
		- La partizione di $\Omega$ è quindi:
			- $$\bigcup_{i=1}^{n}A_{i}=\Omega$$
			- Inoltre: $$A_{i}\cap A_{j}=\emptyset \ \ \ \forall i\ne j$$
		- Quindi si può notare come:
			- $$B=(B\cap A_{1})\cup...\cup (B\cap A_{n})$$
			- Ovvero: $$\bigcup_{i=1}^{n}(B\cap A_{i})$$
		- Grazie all’ [[Proprietà delle probabilità#^2502af|additività finita]] La probabilità risultante quindi è:
			- $$\mathbb{P}(B)=\sum\limits_{i=1}^{n}\mathbb{P}(B\cap A_{i})$$
		- Inoltre se $\mathbb{P}(B_{i})>0$ allora si ha che:
			- $$\mathbb{P}(A)=\sum\limits_{i=1}^{n}\mathbb{P}(A|B_{i})\mathbb{P}(B_{i})$$
- # ES:
	- Un’urna contiene 10 palline di cui 6 bianche e 4 rosse. Si estraggono due palline senza re immissione. Calcolare la probabilità dell’evento:
		- $B_{2}$ = la seconda estratta è bianca.
	- Si ha quindi che:
		- $B_{1}=\frac{6}{10}=\frac{3}{5}$
			- $B_{2}=\frac{5}{9}$; $B_{2}^{C}=\frac{4}{9}$ 
		- $B_{1}^{C}=\frac{4}{10}=\frac{2}{5}$
			- $B_{2}=\frac{6}{9}=\frac{2}{3}$; $B_{2}^{C}=\frac{3}{9}=\frac{1}{3}$
		- La probabilità da trovare è quindi l’unione di tutti i cammini che portano a $B_{2}$
- # Link Utili:
	- 
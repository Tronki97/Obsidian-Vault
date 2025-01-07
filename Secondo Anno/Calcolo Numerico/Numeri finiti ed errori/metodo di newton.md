---
tags: []
aliases:
  - velocità di convergenza
data: "`2024-09-24 10:34`"
---
- # Def:
	- più veloce rispetto all'[[Algoritmo di bisezione]] 
		- può essere usato per numeri complessi $\mathbb{C}$
		- usabile anche per equazioni non lineari.
	- è un tipo di metodo di [[algoritmo di iterazione di punto fisso||punto fisso]] 
	- prendo una funzione $g(x)$ che nella radice abbia la derivata prima nulla. 
		- __Ricordare__ che $f(x)=0$ 
		- $g(x)=x-w(x)f(x)$ e quindi scelgo $w(x)$ che rispetti la condizione
		- $$g'(r)=1-w'(r)f(r)-w(r)f'(r)=$$
		- $$=1-w(r)f'(r)=g'(r)$$
		- e ci serve $g'(r)=0$ quindi ci cerve che $$w(r)=\frac{1}{f'(r)}$$Quindi $f'(r)\ne 0$  
		- Risulta quindi che$$g(x)=1-\frac{f(x)}{f'(x)}$$E quindi per la formula dell'iterazione:
			- $$x_{k+1}=x_{k}-\frac{f(x_{k})}{f'(x_{k})}$$
	 - ## Velocità di convergenza:
		- $x^{*}$ soluzione esatta
		- $x_{k}$ soluzione all'iterazione $k$
		- $|x_{k+1}-x^{*}|=E_{k+1}$ errore assoluto al passo $k+1$ 
		- $|E_{k+1}|\le C|E_{k}|$
			- 1) [[Algoritmo di bisezione]]: $C=\frac{1}{2}$
			- 2) [[algoritmo di iterazione di punto fisso]]: fino $C$ costante di contrazione; $|g'(x)|<C$ 
		- $|E_{k+1}|\le C|E_{k}|^{P}$
			- $\frac{|E_{k+1}|}{|E_{k}|^{P}}\le C: 1<P$
				- $P\leq 1$ lineare
				- $1\le P\le2$ quadratico
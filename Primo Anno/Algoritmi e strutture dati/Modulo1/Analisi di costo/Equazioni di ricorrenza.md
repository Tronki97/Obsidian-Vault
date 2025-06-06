---
tags: []
aliases:
  - metodo dell'iterazione
  - master theorem
  - master theorem semplificato
data: "`2024-08-31 20:05`"
---
- un'_equazione di ricorrenza_ descrive ogni elemento di una sequenza in termini degli elementi precedenti 
	- Per esempio quella di Fibonacci:$$T(n)\begin{cases}1&n\leq 2\\ T(n-1)+T(n-2)+1&n>2\end{cases}$$
	- Voglio determinare la crescita asintotica degli [[Ricorsione||algoritmi ricorsivi]]
- ## Nozioni preliminari
	- Le equazioni di ricorrenza possono essere del tipo:$$T(n)\begin{cases}\Theta(1)&n= 1\\ 2T\left( \left\lfloor {\frac{n}{3}} \right\rfloor \right)+O(n)&n>1\end{cases}$$
	- La notazione asintotica viene sostituita con costanti simboliche$$T(n)\begin{cases}d&n= 1\\ 2T\left( \left\lfloor {\frac{n}{3}} \right\rfloor \right)+cn&n>1\end{cases}$$
	- e le costanti simboliche con 1:$$T(n)\begin{cases}1&n= 1\\ 2T\left( \left\lfloor {\frac{n}{3}} \right\rfloor \right)+1\cdot n&n>1\end{cases}$$
	- Il comportamento asintotico non è influenzato da arrotondamenti:$$T(n)\begin{cases}1&n= 1\\ 2T\left(  \frac{n}{3}\right)+1\cdot n&n>1\end{cases}$$
- ## Metodo dell'iterazione
	- approccio del tipo brute force, ovvero sostituiamo iterativamente la parte ricorsiva dell'equazione finché non appare uno _schema ricorsivo_ legato al _passo di iterazione_ 
	- ES: considerando la ricorrenza:$$T(n)\begin{cases}1&n= 1\\ 2T\left(  \frac{n}{2}\right)+c&n>1\end{cases}$$
	- $T(n)=$
		- $=T\left( \frac{n}{2} \right)+c$   passo 1
		- $=T\left( \frac{n}{4} \right)+c+c$  passo 2
		- ...
		- $=T\left( \frac{n}{2^{i}} \right)+c\cdot i$  passo $i$
	- la ricorsione termina quando $\frac{n}{2^{i}}=1 \implies i=\log_{2} n$ e quindi $$T(n)=T(1)+c\cdot \log_{2}n=1+c\cdot \log_{2}n=\Theta(\log n)$$
	- Si ottiene lo stesso se si sostituisce $c=1$
- ## Master Theorem
	- è un tipo di approccio che serve per risolvere ricorrenze della forma $$T(n)=aT\left( \frac{n}{b} \right)+f(n)$$
		- con $a\geq 1$ e $b>1$ _costanti_ e $f(n)$ _asintoticamente positiva_
	- Equazioni di ricorrenza di algoritmi che 
		- Dividono un problema di dimensione $n$ in $a\geq 1$ sottoproblemi
		- tutti i sottoproblemi hanno dimensione $\frac{n}{b}$, con $b>1$
		- il costo di ogni chiamata ricorsiva è dato da $f(n)$
	- ### Teorema(Master Theorem): ^02fe9e
		- si considera la seguente equazione di ricorrenza$$T(n)\begin{cases}d&n=1\\aT\left( \frac{n}{b} \right)+f(n)&n>1\end{cases}$$con $a\geq 1$ e $b>1$ , d _costante_ e $f(n)$ funzione di costo.
			- 1) $f(n)=O(n^{\log_{b}a-\epsilon})$ per qualche $\epsilon>0\implies T(n)=\Theta(n^{\log_{b}a})$
			- 2)$f(n)=\Theta(n^{\log_{b}a})\implies T(n)=\Theta(n^{\log_{b}a}\log n)$
			- 3) se $f(n)=\Omega(n^{\log_{b} a+\epsilon})$ per qualche $\epsilon>0$, e se $a\cdot f\left( \frac{n}{b} \right)\leq c\cdot f(n)$ per qualche costante $c<1$ e per tutti gli $n$ sufficientemente grandi allora $T(n)=\Theta(f(n))$ 
- ## Master Theorem (versione semplificata) ^65d0b1
	- ### Teorema:
		- $$T(n)\begin{cases}d&n=1\\aT\left( \frac{n}{b} \right)+cn^\beta&n>1\end{cases}$$
		  con $a\geq 1$ e $b>1$ , c,d _costanti_ e sia $\alpha=\log_{b}a=\frac{{\log a}}{\log b}$ allora
			- 1)$\alpha>\beta \implies T(n)=\Theta(n^\alpha)$ 
			- 2)$\alpha=\beta \implies T(n)=\Theta(n^{\alpha}\log n)$
			- 3)$\alpha<\beta \implies T(n)=\Theta(n^\beta)$
	- #### ES:
		- $$T(n)=\begin{cases}1&n=1\\T\left( \frac{n}{2} \right)+c&n>1\end{cases}$$
			- ho che $a=1$, $b=2$ $\beta=0$ $\alpha=\frac{{\log 1}}{\log 2}=0$ e quindi visto che $\alpha=\beta$ $T(n)=\Theta(\log n)$ 
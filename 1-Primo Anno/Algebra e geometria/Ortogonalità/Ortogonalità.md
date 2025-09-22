---
tags: []
aliases: 
data: "`2024-08-31 20:05`"
---
- # Def:
	- Due vettori $x,y\in \mathbb{R}^{n}$ si dicono _ortogonali_(o _perpendicolari_)sse$$<x,y>=0$$Ovvero se il loro [[Prodotto scalare Euclideo|prodotto scalare]] fa 0, e in tal caso si scrive $$x\bot y$$
- #  ES:
	- $\underline{0}$ è ortogonale ad ogni vettore;
	- se $x=(a,b)$ e $y=(-b,a)$ entrambi in $\mathbb{R}^{2}$ si ha che $<x,y>=a(-b)+ba=0$ 
	- se $x\in \mathbb{R}^n$ e $y=\left( \frac{1}{n},...,\frac{1}{n} \right)\in \mathbb{R}^{n}$ allora $<x,y>$ è la media di $x$
	- i vettori [[Coordinate rispetto a una base||coordinati]](le [[Base Canonica||basi canoniche]]) $e_{1},...,e_{n}$ sono ortogonali a coppie, infatti $j\ne k\implies <e_{j},e_{k}>=0$ è una famiglia ortogonale.
- # Proprietà
	- ## Punto di minima distanza
		- Si ha che dati $v\ne 0$ e $x\in \mathbb{R}^{n}$ il punto di minima distanza $\frac{xv}{|v|^{2}}v$ soddisfa$$\left( x-\frac{xv}{|v|^{2}}v \right)v=xv-\frac{xv}{|v|^{2}}v^{2}=xv-xv=0$$Per cui è ortogonale a $x$ 
	- ## Vettore nullo:
		- L'unico vettore di $\mathbb{R}^{n}$ perpendicolare a tutti gli altri è il _vettore nullo_ $\underline{0}$ perché$$<x,\underline{0}>=x_{1}*0+...+x_{n}*0=0\ \ \forall x\in \mathbb{R}^{n}$$
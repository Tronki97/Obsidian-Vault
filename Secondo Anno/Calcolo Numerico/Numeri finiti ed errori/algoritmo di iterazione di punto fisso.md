---
tags: 
aliases:
  - equazioni a punto fisso
  - Errore di troncamento
data: "`2024-09-24 10:01`"
---
- # Def:
	- assegno un val iniziale $x_{0}$
	- costruisco la successione $x_{1}, x_{2},...x_{k}, x_{k+1},...$
	- $x_{k}=G(x_{k-1})$
	- con la proprietà $x_{k}\to_{k=\infty} x^{*}$ (soluzione del problema)
	- Procedimento infinito quindi non implementabile e quindi troncato ad un certo punto generando quindi un:
		- ## _Errore di troncamento_ 
			- Il procedimento viene interrotto perché sennò andrebbe avanti all'infinito   
	- il procedimento viene arrestato quando si verificano dei criteri:
		- $P(x_{k})<\tau<1$ 
		- $k<$ MAXIT (iterazione massima).
	- ## Equazioni a punto fisso:
		- $g(p)=p$ 
		- trovare il punto fisso di $g$ serve per trovare lo zero di $f$
		- infatti: $g(x)=x-w(x)f(x)$ dove $w(x)$ è positivo non nullo.
			- $$x: f(x)=0 \implies x-w(x)f(x)=x \implies f(x)=0$$  
	- ## Condizione di arresto:
		- quando l’errore massimo $E_{max}$ è minore di un certo valore $\tau$ ovvero la _tolleranza_ 
---
tags: []
aliases:
  - Gram-schmidt
  - GS
  - G-S
  - g-s
data: "`2024-08-31 20:05`"
---
- # Def:
	- Data una [[Base]] di uno [[Spazio vettoriale]] $W$, l'algoritmo serve per trovare una [[Base ortogonale]](o [[Base ortonormale||ortonormale]]) di $W$, ossia una base di vettori perpendicolari tra loro (e, se ortonormale, di [[Norma euclidea||norma]] 1) 
- # Algoritmo
	- L'algoritmo si appoggia sulle proprietà delle [[Proiezioni ortogonali]] per ottenere una base ortogonale di uno spazio a partire da un'altra.
	- Sia $w_1,...,w_{k}$ una base di $W$, allora una base ortogonale $u_{1},...,u_{k}$ di $W$ si ottiene ponendo:
		- $u_{1}=w_{1}$
		- $u_{2}=w_{2}-proj_{u_{1}}(w_{2})$, in quanto $\bot u_{1}$
		- $u_{3}=w_{3}-proj_{u_{2}}(w_{3})-proj_{u_{1}}(w_{3})$, in quanto $\bot u_{1}\wedge \bot u_{2}$
		- $\cdots$
		- $u_{k}=w_{k}-proj_{u_{1}}(w_{k})-...-proj_{u_{k-1}}(w_{k})$ in quanto $\bot u_{1}\wedge...\wedge \bot u_{k-1}$
	- Se venisse chiesta una base ortonormale, allora definita la base ortogonale $u_{1},...,u_{k}$, bisognerebbe semplicemente porre 
		- $$f_{1}=\frac{u_{1}}{||u_{1}||},...,f_{k}=\frac{u_{k}}{||u_{k}||}$$
	- Per ottenere quindi la base ortonormale $f_{1},...,f_{k}$
	- _N.B_: se vengono forniti 3 vettori, 2 dei quali sono già perpendicolari tra di loro, allora non conviene cambiarli tutti e 3, ma piuttosto adattare il primo ai due perpendicolari.
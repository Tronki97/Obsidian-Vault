---
tags: []
aliases: 
data: "`2025-04-24 15:09`"
---
- # Argomento:
	-  la firma digitale ci da la garanzia che la persona con cui stiamo comunicando sia trustworthy e quindi sia effettivamente lui.
- # Funzione Hash crittografica:
	- $$f: X \to Y$$
	- $$|X| =n , |Y|=m $$
		- Con $n$ molto maggiore di $m$
	- $$f(x)=y \in Y$$
		- Con $x$ definito come _pre-digest_
	- La funzione $f$ non è biettiva e ogni ele ento dell’insieme $Y$ ha la stessa probabilità degli altri elementi.
		- ![[Pasted image 20250424151548.png]]
	- Elementi vicini in $X$ sono mappati in due elementi diversi abbastanza distanti tra di loro in $Y$
	- Una funzione del genere per essere più affidabile necessita che:
		- Avendo una $x\in X$ deve essere facile ottenere una $y\in Y: f(x)=y$
		- Mentre avendo una $y\in Y$ deve essere computazionalmente complicato ottenere una $x\in X: f(x)=y$
		- Inoltre avendo $x_{1}$ deve essere computazionalmente complicato trovare una $x_{2}: f(x_{1})=f(x_{2})$
		- 
- # Link Utili:
	- 
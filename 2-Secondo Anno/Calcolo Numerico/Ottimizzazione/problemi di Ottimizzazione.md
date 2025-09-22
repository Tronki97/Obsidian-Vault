---
tags: []
aliases:
  - vincolato
  - svincolato
data: "`2024-10-15 18:30`"
---
- # Def:
	- Tutti i problemi che riguardano l'ottimizzazione possono essere riscritti come:
		- $$      \underset{x \in \Omega}{min} f (x)$$
		- $f:\Omega\to \mathbb{R}$ detta _funzione obiettivo_ che descrive la quantità da ottimizzare in funzione dei _parametri_ indicati con $x$ 
		- $\Omega$ è l'_insieme dei valori accettabili_ o dei _vincoli_ deve dichiarare sotto quale ipotesi la soluzione del problema deve sottostare per essere _accettabile_
- # Classificazione:
	- Se $\Omega=\mathbb{R}^{n}$ allora il problema è _svincolato_  ^d124c1
	- Se $\Omega \subset \mathbb{R}^{n}$ allora il problema è _vincolato_. 
		- se usano numeri interi questi problemi sono detti discreti. 
- # Proprietà:
	- se $f(x)$ è derivabile in almeno un punto di $\Omega$ allora è detta _smooth_ 
		- altrimenti è _non-smooth_  
	- Se $f(x)=x^{T}w$ è una funzione lineare in $x$ allora il problema è detto _lineare_
	- se $f(x)=x^{T}Ax+x^{T}b$ è quadratica allora il problema è detto _quadratico_ 
- # 
- # Link Utili:
	- https://devangelista2.github.io/calcolo-numerico/ottimizzazione/intro.html
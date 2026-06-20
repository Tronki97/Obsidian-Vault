---
tags:
aliases:
data: "`2026-06-06 20:19`"
---
- # Def:
	- la traccia di una matrice $M$ di ordine $n$ è la somma di tutti gli elementi sulla sua diagonale principale:
		- $$Tr(M)=\sum\limits_{i}^{n}a_{ii}$$
- # ES:
	- $$M=\begin{pmatrix} 3 & 2 & 0 \\ 2 & 2 & 2 \\ 0 & 2 & 1\end{pmatrix}$$
	- $Tr(M)=3+2+1=6$
- # Proprietà:
	- $Tr(A+B)=Tr(A)+Tr(B)$
	- $Tr(cA)=c*Tr(B)$
	- $Tr(A)=Tr(A^{T})$
	- la traccia è invariante rispetto alla _permutazione ciclica_ ovvero:
		- $$Tr(ABCD)=Tr(BCDA)=Tr(CDAB)=Tr(DABC)$$
		- però si nota che $Tr(ABCD)\ne Tr(ACBD)$ non si possono quindi fare permutazioni generiche
	- _due matrici simili hanno la stessa traccia_ infatti sfruttando la precedente proprietà:
		- $$Tr(B)=Tr(P^{-1}AP)=Tr(P*P^{-1}*A)=Tr(I*A)=Tr(A)$$
- # Link Utili:
	- 
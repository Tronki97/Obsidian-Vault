---
tags: 
aliases:
  - Laplace
  - laplace
data: "`2024-08-31 20:05`"
---
- # Def:
	- Sia $A$ una [[Matrici||matrice]] $\in M_{n}(\mathbb{R})$ allora 
		- 1) se $A$ ha ordine $n=1$ ovvero $A=\begin{pmatrix}a_{11}\end{pmatrix}$ si pone$$det(A)=a_{11}$$
		- 2) se $A$ ha ordine $n>1$ suppongo di saper calcolare il determinante di matrici di ordine $n-1$ e definisco:$$\Gamma_{ij}=(-1)^{i+j}*det(A_{ij})$$Come un valore determinato dal determinante di $A_{ij}$, ovvero la _matrice minore_ (ovvero una matrice dove la riga $i$-esima e la colonna $j$-esima sono state cancellate) e allora si ha che $$det(A)=a_{11}\Gamma_{11}+...+a_{1n}\Gamma_{1n}=\sum\limits_{k=1}^{n} a_{1k}\Gamma_{1k}$$N.B: Posso scegliere di lavorare con Laplace su qualunque riga o colonna e funzionerà sempre
	- $2\times2$ 
		- Verifico lo sviluppo di Laplace su una matrice $A\in M_{2}(\mathbb{R})$$$A=\begin{pmatrix}a&b\\c&d\end{pmatrix}$$allora calcolo intanto $\Gamma_{11}=(-1)^{1+1}*det(d)=1*d=d$, e $\Gamma_{12}=(-1)^{1+2}*det(c)=-1*c=-c$ e ottengo $$det(A)=a*d+b*(-c)=ad-bc$$
		 
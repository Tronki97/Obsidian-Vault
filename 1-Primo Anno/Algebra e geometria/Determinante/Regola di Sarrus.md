---
tags: []
aliases:
  - sarrus
data: "`2024-08-31 20:05`"
---
- # Def:
	- consente di calcolare il [[Determinante]] di una [[Matrici||matrice]] quadrata di ordine 3 o superiore usando uno stratagemma grafico. Ovvero data $A$ t.c $$A=\begin{pmatrix}a_{11}&a_{12}&a_{13}\\ a_{21}&a_{22}&a_{23}\\ a_{31}&a_{32}&a_{33}\end{pmatrix}$$Per calcolarne il determinante è sufficiente:
		- 1)Riscrivere la matrice e accostare la stessa matrice sulla destra$$\begin{pmatrix}a_{11}&a_{12}&a_{13}&a_{11}&a_{12}&a_{13}\\ a_{21}&a_{22}&a_{23}&a_{21}&a_{22}&a_{23}\\ a_{31}&a_{32}&a_{33}&a_{31}&a_{32}&a_{33}\end{pmatrix}$$
		- 2) Sommo i prodotti degli elementi delle prime 3 diagonali principali che si incontrano procedendo da $sx$ verso $dx$ 
		- 3) sommo i prodotti degli elementi delle 3 antidiagonali complete che si incontrano procedendo da $dx$ verso $sx$
		- 4) Sottraggo nell'ordine i risultati ottenuti.
		  ![[regola di Sarrus.png]]
		- ## Importante 
			- _La regola di Sarrus vale solo per matrici di ordine 3_!
- # ES:
	- $$A=\begin{pmatrix}1&0&3\\ 0&-2&5\\ 4&1&0\end{pmatrix}$$
	  Procedo con lo svolgimento:$$\begin{pmatrix}1&0&3&1&0&3\\ 0&-2&5&0&-2&5\\ 4&1&0&4&1&0\end{pmatrix}$$
	- Faccio la somma dei prodotti delle prime 3 diagonali:$$[1*-2*0]+[0*5*4]+[3*0*1]=0$$
	- Ora faccio la somma delle prime 3 antidiagonali:$$[3*-2*4]+[0*0*0]+[1*5*1]=-24+0+5=-19$$
	- Ora faccio la sottrazione tra il primo e il secondo:$$det(A)=0-(-19)=19$$
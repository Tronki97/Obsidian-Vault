---
tags: []
aliases: 
data: "`2024-08-31 20:05`"
---
- # Rango righe:
	- Il rango righe di una [[Matrici||matrice]] _A_ è il numero di righe non nulle che contiene: 
		- $$rr(A)$$
		- In una matrice a scala $m\times n$ si ha che 
			- $$rr(A)\leq min(m,n)$$
		- Questo perché il numero di pivot è minore o uguale al numero di colonne e righe della matrice.
- # Rango colonne:
	- analogamente al rango righe rappresenta il numero di colonne non nulle che la matrice $A$ contiene:
		- $$rc(A)$$
- # Uguaglianza:
	- Se $A\in M_{m,n}(\mathbb{R})$ allora il rango righe di $A$ è uguale al rango colonne:
	- ## Dim:
		- sia $L_{A}:\mathbb{R}^{n} \to \mathbb{R}^{m}$ l'[[Applicazione lineare]] associata alla matrice $A$ rispetto alle basi canoniche. il [[Kernel]] avrà dimensione $n-rr(A)$ dove $rr(A)$ è il rango righe; per il [[Teorema della dimensione]] si sa che $dim(ker(L_{A}))=n-dim(Im(L_{A}))$ da cui segue che $rr(A)=dim(Im(L_{A}))$ che per le proprietà dell'[[Immagine di una funzione]] so essere $rc(A)$ quindi si ha che il rango colonne di $A$ è uguale al rango righe. 
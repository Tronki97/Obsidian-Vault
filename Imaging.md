---
tags:
  - TODO
aliases: 
data: "`2024-11-11 13:40`"
---
- # Intro:
	- un’immagine di $M \times N$ pixel non è altro che una matrice $M \times N$ con un coefficiente applicato che sta a rappresentare il colore. 
	- Per quanto riguarda il bianco e nero si ha la scala di grigi: 
		- $0=$ bianco; $255=$ nero
	- invece per i colori ogni pixel è un vettore di 3 valori (rosso, verde, blue) che combinati formano il colore
- # Matrice estesa:
	- sia $A$ una matrice $M \times N$ e $k \in \mathbb{N}$ allora $B$ è una matrice $(M+2k)\times(N+2k)$ che _estende_ $A$ $\iff$ :
		- $$\forall i, j \in \{1,...,M\}\times\{1,...,N\}\$ A_{(i,j)} = B_{(i+k, j+k)}$$ 
	- ## ES:
		- $$A=\begin{pmatrix}7& 8 & 9 \\ 12& 13& 14 \\ 17&18 & 19\end{pmatrix}$$
		- viene estesa da B:
			- $$B=\begin{pmatrix}1&2&3&4&5\\6&7& 8 & 9 & 10\\ 11&12& 13& 14 &15\\ 16&17&18 & 19& 20\end{pmatrix}$$
			- in questo caso $k=1$ 
- # Centro di una matrice:
	- elemento di coordinate $\frac{{D+1}}{2},\frac{{D+1}}{2}$ dove $D$ è il numero di colonne e righe della matrice. ($D$ è dispari)
		- $$M=\begin{pmatrix}1&2&3&4&5\\6&7& 8 & 9 & 10\\ 11&12& 13& 14 &15\\ 16&17&18 & 19& 20\\ 21&22&23&24&25\end{pmatrix}$$
		- in questo caso è 13.
- # Link Utili:
	- 
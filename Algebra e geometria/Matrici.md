20/02/24
una matrice A con n righe e m colonne è una tabella di numeri reali:$$\begin{pmatrix}a_{11}&a_{12} &a_{1m}\\ a_{21} &a_{22} &a_{2m} \\ a_{n1} &a_{n2} &a_{nm}\end{pmatrix}$$ES:$$\begin{pmatrix}20 &54 &-12\\ \sqrt{12} &-6 &0 \\ 90 &\pi &-\sqrt4\end{pmatrix}$$
Una matrice non ha spazi vuoti al massimo contiene uno 0  l'insieme delle matrici  con n righe e m colonne si indica con:  $M_{m,n}(R)$ o $M_{mxn}(R)$  
una matrice si dice quadrata se m=n 
la trasposta di una matrice una matrice dove l'elemento $a_{ji}$ diventa l'elemento $a_{ij}$  
quindi una matrice di 4 righe e tre colonne avrà la trasposta di 3 righe e 4 colonne.

Due matrici A e B sono uguali se $a_{ij}=b_{ij}$ per ogni i ed ogni j 

Una riga (o colonna) di una matrice A può essere vista come una matrice $1\times n$ (rispettivamente $m\times1$) 

date una riga $1\times n$ e una colonna $m\times1$ aventi la stessa lunghezza il loro prodotto è:
$$\begin{pmatrix}a_{11}&a_{12} &a_{1m}\end{pmatrix}   \cdot\begin{pmatrix}b_{11}\\b_{12}\\ b_{1m}\end{pmatrix}= a_{11}+b_{11}... \in R$$ 
date due matrici (A e B)$_{mxn}$  il loro prodotto è una matrice $C_{mxn}$ di righe i di A e colonne j di B  ^4f234f

ES:
$$\begin{pmatrix}1 &-3 &2\\ {0} &5 &7 \\ 1 &4 &3\end{pmatrix} \cdot \begin{pmatrix}1 &0\\ {0} &5 \\ -7 &9\end{pmatrix} = \begin{pmatrix}-13 &3\\ {-49} &88 \\ -20 &47\end{pmatrix} $$

per fare il prodotto faccio il prodotto tra la prima riga di A e la prima colonna di B procedendo per ogni colonna e ripeto lo stesso passaggio per ogni riga di A.

##### NOTA:
se A e B sono matrici quadrate sono definiti entrambi i prodotti AB e BA ma possono essere diversi quindi il prodotto tra matrici non è commutativo.


#### SOMMA DI DUE MATRICI 
posso sommare due matrici solo se hanno la stessa forma e l'operazione è commutativa.

Proprietà:
1) (A+B)C=AC+BC 
2) C(A+B)=CA+CB
3) $(AB)^{T}=B^TA^T$ 
4) (AB)C=A(BC)

##### NOTA: 
insieme di matrici + e $\cdot$ costituiscono un anello,
l'elemento neutro per il + è la matrice nulla: $\begin{pmatrix}0 &0 &0\\ {0} &0 &0 \\ 0 &0 &0\end{pmatrix}$
l'elemento neutro per il per il $\cdot$ è $I=\begin{pmatrix}1 &0 &0\\ {0} &1 &0 \\ 0 &0 &1\end{pmatrix}$

#### matrice in forma a scala ^f9d3d2
1) le righe nulle si trovano in fondo alla matrice.
2) il primo elemento non nullo di ogni riga si trova più a destra del 1° elemento non nullo della riga precedente. (il primo numero non nullo di ogni riga della matrice si dice "pivot")
		ES: $\begin{pmatrix}1 &-3 &2\\ {0} &5 &7 \\ 0 &0 &3\end{pmatrix}$ 

il numero di pivot nella matrice è $\leq$ al numero di colonne e righe 
il rango righe di una matrice è uguale al numero di righe non nulle (numero di pivot)


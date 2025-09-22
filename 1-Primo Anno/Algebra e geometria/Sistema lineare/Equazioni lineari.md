20/02/24
In n incognite è del tipo $a_{1,}x_1+a_2,x_2+a_n,x_n$
dove ${a}{\in} R$ sono i n coefficienti 
e le x sono le incognite 
ax + by=c è un eq lineare.
xy-8=0 non lo è 

Una soluzione è un n-upla ordinata($c_{1,}c_{2,}...c_n$)di numeri reali che sostituiti alle incognite rendono vera l'equazione.

#### Sistema lineare

^ff8be3

di n incognite è un insieme di equazioni che devono essere verificate contemporaneamente. 
ES:$$\begin {cases}3x_1-2x_2=1 \\x_1+x_2=7 \end {cases}$$

per le soluzioni si usano le seguenti proprietà delle uguaglianze:
1) aggiungendo a entrambi i membri di un uguaglianza un numero $c\in R$ l'uguaglianza resta vera.
	- es: $a=b \Rightarrow a+c=c+b$ 
2) stessa cosa vale per la moltiplicazione.

un Sistema lineare può essere approssimato ad un [[Matrici#^4f234f||prodotto tra Matrici]] e il risultato $Ax=b$ dove x e b sono delle colonne.  
e per farlo si usano delle matrici a scala facendo: 
sostituzioni successive partendo dal basso.
ES:
$$\begin {cases}x_1-x_{3=2 } \\ x_2+3x_{3} =1 \\ 5x_{3}=-3 \\ 0=6\end {cases}$$

$$A|b=\begin{pmatrix}1 &0 &-1 &| &2\\ 0 &1 &3 &| &1\\ 0 &0 &5 &| &-3 \\ 0 &0 &0 &| &6\end{pmatrix}$$

non ha soluzione $rr(A)\ne rr(A|b)$ 


$$A|b=\begin{pmatrix}3 &0 &0 &5 &| &2\\ 0 &5 &2 &1 &| &-7\\ 0 &0 &1 &2 &| &3 \\ 0 &0 &0 &1 &| &-8\end{pmatrix}$$
$$\begin {cases}3x_1+5x_{4}=2 \\ 5x_2+2x_{3}+x_4 =-7 \\ x_{3}+2x_4=3 \\ x_4=-8\end {cases}$$
il sistema ha una soluzione formata da 4 valori ognuno per ogni x: $x_{4}=-8, x_{3}=19, x_{2}=-\frac{37}{5}, x_{1}=14$ 

##### Consiglio 
si ricavano le incognite corrispondenti ai pivot, le altre hanno hanno valore arbitrario e possono assumere infiniti valori. 

Proposizione:
rr=rango righe
sia $Ax=b$ un sistema lineare con matrice completa A|b
1) il sistema ha soluzioni sse rr(A)=rr(A|b)
2) se rr(A)=rr(A|b)=r e n è il numero delle incognite 
	2a: se n=r -> 1 sola soluzione 
	2b: se $r<n$ -> infinite soluzioni che dipendono da $n-r$ parametri
	2c: se n° incognite > rr abbiamo infinite soluzioni che dipendono da n-r parametri. 
			ES: $$\begin {cases}x_1+5x_{3}=1 \\x_3=1 \end {cases}$$
			$x_{1}=-4, x_3=1$ e le soluzioni sono infinite 
			$S= \{(-4, s, 1)|s\in R\}$ con s che può assumere infiniti valori.


DEF: 
Due sistemi lineari si dicono equivalenti se hanno le stesse soluzioni.
##### Consiglio:
per risolvere un sistema lineare Ax=b lo trasformiamo in un sistema equivalente $A'x=b'$ tale che $(A'|b')$ sia a [[Matrici#^f9d3d2||scala]].
1) scambiamo due equazioni
2) moltiplicazione di una equazione ad entrambi i membri per un numero reale $c\in R$ con $c\ne0$
3) sostituzione dell'equazione j-esima con la somma della equazione j-esima + l'equazione i-esima moltiplicata per $a\in R$ 


si dicono operazioni elementari per le matrici:
1) scambio di righe:  $r_{i}\longleftrightarrow r_j$
2) moltiplicazione di una riga per $c\in R, c\ne0$:$r_{i}\longleftrightarrow cr_j$ 
3) $r_{i}\longleftrightarrow r_j+ar_{i,}a\in R$
Tramite l'algoritmo di Gauss possiamo assimilare una matrice a scala per righe.

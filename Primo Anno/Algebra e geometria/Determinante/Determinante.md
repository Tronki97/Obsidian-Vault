---
tags: []
aliases:
  - teoremone
  - BIG TH
  - big th
  - big theorem
data: "`2024-08-31 20:05`"
---
- # Def:
	- Il _determinante_ di una [[Matrici||matrice]] quadrata $A \in M_{n}(\mathbb{R})$ è una funzione $det$ : $M_{n}(\mathbb{R})\to \mathbb{R}$ definita come $A\to det(A)$ tale che:
		- 1)presa una riga $j$ di $A$ e scomposto tale vettore come somma di altri due vettori $v,u$ allora $det(A)$ è la somma dei determinanti delle due matrici ottenute sostituendo alla riga $j$ rispettivamente $v,u$;
		- 2) Presa una riga $j$ di $A$ e scomposto tale vettore come il prodotto $\lambda u$, allora il $det(A)$ è il prodotto tra$\lambda$ e il determinante della matrice ottenuta sostituendo alla riga $j$ il vettore $u$
		- 3) se due righe di $A$ sono uguali allora $det(A)=0$;
		- 4) $det(I)=1$ dove $I$ è la [[Matrice identità]]
	- è importante tenere in considerazione che si dimostra come _una funzione che soddisfi queste 4 proprietà esiste ed è unica_, per cui è possibile studiarla. 
- # Importanza ^65c54b
	- Il determinante di una matrice è utile a studiarne [[Matrice invertibile||l'invertibilità]] e il comportamento dell'[[Applicazioni lineari definite da una matrice||applicazione lineare associata]] $L_{A}$. Di fatto si ha che:$$A\ invertibile \iff det(A)\ne 0$$e che $det(A)$ dove $A\in M_{n}(\mathbb{R})$ associata a $L_{A}:\mathbb{R}^{n}\to \mathbb{R}^{n}$ ci dice come cambiano le aree $(\mathbb{R}^2)$, i volumi $(\mathbb{R}^{3})$ o gli spazi maggiori quando si applica $L_{A}:$ funge un po da derivata di $L_{A}$
- # Corollario
	- 1) Se $B$ si ottiene da $A$ scambiando due righe allora$$det(A)=-det(B)$$
	- 2) Se $B$ si ottiene da $A$ sommando a una riga da $A$ una qualunque [[Combinazione lineare]] delle altre righe allora$$det(A)=det(B)$$
	- 3) Se $A$ è una _matrice triangolare_ (ovvero con tutti 0 al di sopra o al di sotto della diagonale principale) allora $det(A)$ è il prodotto degli elementi che si trovano sulla su diagonale principale.
	- Da queste 3 regole e la 2°legge del determinante _si riesce a ricavare il determinante di qualunque matrice usando semplicemente l'[[Algoritmo di Gauss]]_. Infatti scambiare le righe sommarle e moltiplicarle per scalari sono solo operazioni elementari. Quindi riducendo a [[Matrici#^f9d3d2||scala]] una qualunque matrice, si può sempre ricavare il determinante, _senza usare formule._
- # Calcolo
	- Da quest'ultima osservazione si ottiene un calcolo metodico del determinante usando Gauss.
	- $2\times2$
		- presa una matrice $A\in M_{2}(\mathbb{R})$ definita come$$A=\begin{pmatrix}a_{11}&a_{12}\\a_{21}&a_{22}\end{pmatrix}$$La si vuole ridurre a scala. Perciò basta avere 0 al posto di $a_{21}$. Applico Gauss e ottengo $$A=\begin{pmatrix}a_{11}&a_{12}\\0&a_{22}-\frac{a_{21}}{a_{11}}a_{12}\end{pmatrix}$$Ora so che è a scala, perciò triangolare: per la 3°conseguenza delle proprietà del determinante mi risulta che $$det(A)= a_{11}*(a_{22}-\frac{a_{21}}{a_{11}}a_{12})=a_{11}*a_{22}-a_{21}*a_{12}$$Il che porta a concludere che il determinante di una qualunque matrice $2\times 2$ è$$det(A)= a_{11}*a_{22}-a_{21}*a_{12}$$
	- $3\times3$
		- usando lo stesso ragionamento del caso precedente ottengo che il determinante di una qualunque matrice $3\times3$ è$$det(A)=a_{11}a_{22}a_{33}+a_{12}a_{23}a_{31}+a_{13}a_{21}a_{32}-$$$$-a_{13}a_{22}a_{31}-a_{12}a_{21}a_{33}-a_{11}a_{23}a_{32}$$Che si può ricordare usando la _regola di Sarrus_
- # Formule 
	- nonostante Gauss funzioni sempre, per matrici di ordine superiore al 3 si usa la formula che deriva dal [[Teorema di Laplace]] 
- # Proposizioni
	- ## Trasposta:
		- Le proprietà del determinante sulle righe valgono anche per le colonne per cui:$$det(A)=det(A^{T})$$
	- ## Invertibilità di una matrice 
		- Sia $A\in M_{n}(\mathbb{R})$ allora si ha che $$A \ invertibile \iff det(A)\ne 0$$
		- ### Dimostrazione
			- $\implies$)
				- suppongo che $A$ sia invertibile e quindi so che $$\exists B\in M_{n}(\mathbb{R}):AB=I_{n}=BA$$
				- per il [[Teorema di Binet]] so che $$det(AB)=det(A)det(B)$$
				- ma essendo $AB=I$ allora $det(AB)=det(I)=1$ per cui $$det(A)det(B)=1$$
				- Il che porta a dire che $det(A)\ne0$
			- $\Longleftarrow$)
				- suppongo che $det(A)$ sia $\ne 0$ allora posso dire, _per un teorema che non dimostriamo_, che l'inversa di $A=A^{-1}=B=(b_{ij})$ si può scrivere come:$$b_{ij}=\frac{1}{det(A)}\Gamma_{ji}=\frac{1}{det(A)}(-1)^{j+i}det(A_{ji})$$ed essendo $det(A)\ne 0$ questa inversa esiste 
				- Qed
	- ## Invertibilità di una funzione:
		- Sia $f:\mathbb{R}^{n} \rightarrow \mathbb{R}^{n}$ un'[[Applicazione lineare]], e sia $A$ la sua matrice associata rispetto alla [[Base Canonica]] di $\mathbb{R}^{n}$ $(f=L_{A})$ allora si ha che $$f \ invertibile \iff det(A)\ne 0$$e che l'inversa di $f \ (f^{-1})$ è l'applicazione lineare associata a $A^{-1}$
		- ### Dimostrazione:
			- $\implies$)
				- so che $f$ è invertibile e quindi $g$ la sua inversa. sia $B$ la matrice associata a $g$ $(g=L_B)$ allora devo dimostrare che $B=A^{-1}$ perché ciò implica che $det(A)\ne 0$ per la proposizione precedente. 
				- So che $$g\circ f=id$$Che per la [[Composizione di applicazioni lineari]] equivale a dire $$g(f(\underline{x}))=(BA)\underline{x}=\underline{x}$$Il che implica che $$BA=I$$
				- Ma so per ipotesi che $$f\circ g=id$$e ciò per lo stesso ragionamento di prima implica che:$$AB=I$$
				- Avendo quindi $$AB=BA=I$$Ciò vol dire che $B$ è la matrice inversa di $A$ ovvero $$B=A^{-1}$$Che a sua volta implica $$det(A)\ne0$$Qed
			- $\Longleftarrow$)
				- assumo che $det(A)\ne0$ e perciò $\exists B =A^{-1}$. Ora sia $g=L_{B}$ ovvero l'applicazione lineare definita da $B$. devo dimostrare che $g\circ f=f\circ g=id$
				- Sapendo che la matrice associata a $g\circ f$ è $$BA=A^{-1}A=I$$
				- Ciò implica che $$g\circ f=id$$
				- So anche che la matrice associata a $f\circ g$ è$$AB=A A^{-1}=I$$Per cui$$f\circ g=id$$e allora:$$g\circ f=f\circ g=id$$
				- Qed
- # Teoremone ^3334b3
	- Sia $f:\mathbb{R}^{n} \rightarrow \mathbb{R}^{n}$ e sia $A$ la matrice associata ad $f$ allora le seguenti proposizioni sono equivalenti:
		- 1)$f$ è invertibile
		- 2)$f$ è [[iniettiva]]
		- 3)f è [[Suriettiva]] 
		- 4)$dim(Im(f))=n$
		- 5)$rk(A)=n$
		- 6) le colonne di $A$ sono linearmente indipendenti
		- 7) le righe di $A$ sono linearmente indipendenti 
		- 8) il sistema $A \underline{x}=\underline{0}$ ha un'unica soluzione 
		- 9) il sistema $A \underline{x}=\underline{b}$ ha un'unica soluzione $\forall b \in \mathbb{R}^{n}$(dalla definizione di [[Controimmagine]]) 
		- 10) $A$ è invertibile 
		- 11) $det(A)\ne0$
	- Questo è utilissimo perché: se ci viene chiesto, per esempio, se $f$ è iniettiva basta calcolare il determinante della matrice associata e vedere che sia _diverso_ da 0.
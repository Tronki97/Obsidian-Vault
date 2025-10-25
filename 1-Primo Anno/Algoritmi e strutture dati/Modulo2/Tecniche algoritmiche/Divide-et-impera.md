---
tags: 
aliases:
  - torre di hanoi
  - sotto-vettore non vuoto di valore massimo
  - Moltiplicazione di interi di grandezza arbitraria
data: "`2024-08-31 20:05`"
---
- ## Introduzione:
	- ==Divide==: il problema in sotto-problemi più semplici
	- ==Impera==: risolve i sotto-problemi ricorsivamente 
	- ==Combina==: unisce le soluzioni dei sotto-problemi per costruire la soluzione 
- ## ES: Torre di Hanoi
	- ### Scopo:
		- Impilare in ordine decrescente i dischi sul piolo di destra, senza mai impilare un disco più grande sopra uno più piccolo, muovendo solo un disco alla volta e si può usare il piolo centrale.
	- ### Soluzione divide-et-impera
	```java
		void Hanoi(Stack p1, Stack p2, 
			 Stack p3,
					int n)
			 if(n==1)
				 p3.push(p1.pop());
			 else
				 Hanoi(p1,p3,p2, n-1);
				 p3.push(p1.pop);
				 Hanoi(p2,p1,p3,n-1);
			
	```
	- _Divide_:
		- n-1 dischi da __p1__ a __p2__
		- 1 disco da __p1__ a __p3__
		- n-1 dischi da __p2__ a __p3__
	- _Impera_:
		- esegue ricorsivamente gli spostamenti
	- _Costo computazionale_:
		- $$\begin{cases}T(1)=1\\ T(n)=2T(n-1)+1\end{cases}$$
- ## ES: Moltiplicazione di interi di grandezza arbitraria
	- Considero due interi di $n$ cifre decimali, __X__ e __Y__
		- 
		  $$X=x_{n-1}x_{n-2}\dots x_{1}x_{0}=\sum_{i=0}^{n-1} x_{i}\times 10^i$$
		- 
		  $$Y=y_{n-1}y_{n-2}\dots y_{1}y_{0}=\sum_{i=0}^{n-1} y_{i}\times 10^{i}$$
	- Voglio calcolare il prodotto $XY$
		- l'algoritmo per la moltiplicazione in colonna ha costo $O(n^{2})$
		- si può fare di meglio usando un algoritmo divide-et-impera.
	- ### Idea:
		- suppongo che sia $X$ che $Y$ abbiano lo stesso numero di cifre 
		- divido la sequenza di cifre in due parti uguali $$X=X_{1}\times{10}^{\frac{n}{2}}+X_{0}$$
		  $$Y=Y_{1}\times{10}^{\frac{n}{2}}+Y_{0}$$
		- Il prodotto può quindi essere calcolato come: $$\begin{array} X\times Y=(X_{1}\times{10}^{\frac{n}{2}}+X_{0})\times (Y_{1}\times{10}^{\frac{n}{2}}+Y_{0})= \\ \\ =(X_{1}Y_{1})\times 10^{n}+(X_{1}Y_{0}+X_{0}Y_{1})\times 10^{\frac{n}{2}}+X_{0}Y_{0}\end{array} $$
		- #### OSS: 
		  $$X\times Y=(\underline{X_{1}Y_{1}})\times 10^{n}+(\underline{{X_{1}Y_{0}}}+\underline{X_{0}Y_{1}})\times 10^{\frac{n}{2}}+\underline{X_{0}Y_{0}}$$
			- La moltiplicazione per $10^{n}$ richiede tempo $O(n)$ 
			- Ci sono 4 prodotti di numeri a $\frac{n}{2}$ cifre 
			- l'[[Equazioni di ricorrenza||equazione di ricorrenza]] si può scrivere come:$$T(n)=\begin{cases}c_{1}&n\le{1}\\4T\left( \frac{n}{2} \right)+c_{2}n&else\end{cases}$$
			- che usando il [[Equazioni di ricorrenza#^02fe9e||master theorem]] risulta $O(n^2)$ che non migliora nulla rispetto all'algoritmo banale.
	- ### Miglioramento:
		- pongo
			- $P_{1}=(X_{1}+X_{0})(Y_{1}+Y_{0})$
			- $P_{2}=(X_{1}Y_{1})$
			- $P_{3}=(X_{0}Y_{0})$
		- posso scrivere:$$P_{2} 10^n+(P_{1}-P_{2}-P_{3})10^{\frac{n}{2}}+P_{3}$$
		- il calcolo di $P_{1}$, $P_{2}$, $P_{3}$ richiede solo 3 prodotti tra numeri di $\frac{n}{2}$ cifre 
		- #### Analisi miglioramento
			- nuova equazione di ricorrenza:$$T(n)=\begin{cases}c_{1}&n\le{1}\\3T\left( \frac{n}{2} \right)+c_{2}n&else\end{cases}$$
			- che col _Master Theorem_ ci risulta $a=3$, $b=2$ quindi $\alpha=\frac{\log 3}{\log_{2}}=$ numero compreso tra 2 e 1:
				- $T(n)\in O(n^{\log_{2} 3}) \approx O(n^{1.59})$
- ## ES: sotto-vettore non vuoto di valore massimo
	- vettore $V[n]$ di n valori 
		- vogliamo individuare un sotto-vettore non vuoto di v la cui somma degli elementi sia massima.
			- Domanda: quanti sono i sotto-vettori  di v?
				- risposta: $\frac{n(n+1)}{2}\in O(n^2)$  
		- ### prima versione brute force:
		```java
			double SommaMax1(double v[n])
				double smax=v[0];
				for(int i=0;i<n;i++)
					for(int j=0; j<n;j++)
						double s=0;
						for(int k=i; k<j; k++)
							s=s+v[k]; 
						if(s>smax)
							smax=s;
				return smax
		```
		- l'algoritmo ricalcola ogni volta la sommatoria con quindi 3 cicli abbiamo un costo di $O(n^3)$
		- ### Seconda versione:
		```java
			double SommaMax2(double v[n])
				double smax=v[0];
				for(int i=0; i<n;i++)
					double s=0;
					for(int j=i; j<n;j++)
						s=s+v[j];
						if(s>smax)
							smax=s;
				return smax;
		```
		- qui ci si ricorda il valore della sommatoria precedente togliendo effettivamente un ciclo annidato scendendo ad un costo di $O(n^2)$
		- ### Strategia divide-et-impera
			- dividiamo il vettore in 2 parti separate dal pivot centrale
			- il sotto-vettore potrebbe trovarsi:
				- nella prima metà
				- nella seconda metà
				- a cavallo tra la prima e la seconda:
					- posso cercare un sotto-vettore che inizia nella prima metà e finisce sul pivot centrale 
	```java
		float SommaMaxDI(float v[n], int i,j)
			if(i>j)
				return 0;
			else if(i==j)
				return v[i];
			else
				m=floor((i+j)/2);
				float l=SommaMaxDI(v, i, m-1);
				float r=SommaMaxDI(v, m+1, j);
				float sa=0;
				float sb=0;
				float s=0;
				int k;
				for(k=m-1; k>=i; k--)
					s=s+v[k];
					if(s>sa)
						sa=s;
				s=0;
				for(k=m+1; k<=i;k++)
					s=s+v[k];
					if(s>sb)
						sb=s;
			return max(l, r, v[m]+sa+sb);
	```
	- trovo i sotto-vettori massimi sia a destra che a sinistra del pivot poi si aggiunge il pivot ad entrambi e poi si fa il max tra la somma a sinistra quella a destra e quella con il pivot.
	- per il costo: si usa l'equazione di ricorrenza. e il [[Analisi ammortizzata#^4f2267||metodo dell'iterazione]] con:  $$T(n)=\begin {cases} 1 &n=1 \\2T(n/2)+n  &n>1 \end {cases}$$    T(n)=$\Theta(n\ log\ n)$ 
	- ### Ricapitolando:
		- brute force: costo $O(n^3)$
		- brute force migliorato: costo: $O(n^2)$
		- Divide-et-impera: costo: $O(n\ log\ n)$
- ## In conclusione: 
	- applicare divide-et-impera quando i passi dividi e combina sono semplici 
	- ### EZ:
		- Ho un array ordinato lunghezza n; definire un algoritmo che cerchi un indice _i_ , se possibile, tale per cui $A[i]=i$ 
			- Sol: 
				- usare ricerca binaria m=n/2, 
				- se: $A[m]==m$ return m; 
				- else if: $A[m]>m$ cerco a sinistra 
				- else if: $A[m]<m$ cerco a destra 
				- tutto ciò fatto in maniera ricorsiva.
				- il costo computazionale risultante è $O(log\ n)$ 
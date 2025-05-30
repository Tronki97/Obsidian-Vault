---
tags: []
aliases: 
data: "`2025-04-16 10:20`"
---
- # struttura:
	- Ha una struttura iterativa, eseguita un numero indefinito di volte.
	- Si esce quando il [[Algoritmi programmazioni Lineare#^a0d9ff|vertice]] $x$ è una soluzione ottima cercando di determinare se esiste $y$ soluzione per il _duale_ con lo stesso valore della [[Programmazione lineare intera (PLI)#^fbc927|funzione obiettivo]]
	- Quando $x$ non è ottima ci si sposta su un altro vertice seguendo una _direzione di crescita_ che sia _ammissibile_.
	- Se fosse possibile spostarsi all’infinito lungo quella direzione allora si ha un [[Secondo Anno/Ottimizzazione combinatoria/Problemi e modelli/Problemi di ottimizzazione#^1429ac|problema illimitato]].
- # Algoritmo:
	- $B$ = insieme di indici di vincoli della base ammissibile corrente e ci fa capire su che vertice ci troviamo.
	- $N=$ insieme di vincoli, tutti gli indici di vincoli che non stanno in $B$
	- 1) $N= \{1,...,m\}-B$
	- 2) $\bar x = A_{B}^{-1}b_{B}$
		- Si calcola la soluzione di base rispetto a $B$ trovando quindi il _vertice_.
	- 3) $\bar y = cA_{B}^{-1}$
	- 4) $\bar y _{N}=0$
	- 5) se $\bar y b\ge 0$ allora si termina e si restituisce $\bar x$ e $\bar y$ 
		- Ovvero si ha trovato un ottimo e lo si restituisce
	- 6) $h=\min \{i\in B | \bar y_{i} <0\}$
	- 7) sia $\xi$ la colonna di indice $h$ in $-(A_{B}^{-1})$
	- 8) se $A_{N} \xi \le 0$ allora si termina e restituisco $\xi$ quindi il _problema è illimitato_
	- 9) $k=\arg \min\left\{ \frac{{b_{i}-A_{i}\bar x}}{A_{i}\xi} \right| A_{i} \xi>0 \land i\in N \}$
		- $A_{i}\xi$ Sono gli scalari nel vettore di prendo quei valori e faccio il calcolo, e ciò mi dice quanto posso spostarmi verso $\xi$ prima che il vincolo ${i}$ diventi falso 
	- 10) $B= B\cup \{k\} -\{h\}$
	- 11) _si torna al punto 1_
- # ES:
	- #inserisci-esempio 
- # Correttezza:
	- L'algoritmo mantiene 3 invarianti:
		- $B$ è sempre _base ammissibile_
		- $\bar x$ è _soluzione ammissibile_ per il problema primale:
			- $$\max \{cx | Ax\le b\}$$
			- $\bar y A = c$
			- Quindi $\bar x$ è sempre un [[Algoritmi programmazioni Lineare#^a0d9ff|vertice]]
			- Per $\bar y$ la condizione $\bar y A=c$ vale per come sono inizializzati:
				- $\bar y _{N}$ e $\bar y_{B}$ 
			- Quindi $\bar y$ è sempre soluzione ammissibile per il problema duale:
				- $$\min \{y b | yA=c\}$$
		- Quindi se $\bar y_{B}\ge 0$ allora si restituiscono $\bar x, \bar y$ che sono soluzioni ottime per i problemi primali e duali e quindi _il programma termina correttamente_.
		- Se ciò non vale si cerca una direzione di crescita ammissibile per $\bar x$ e $\xi$ lo sarà sempre per come viene definito al passo 7:
			- $$c \xi = c(-A_{B}^{-1} u_{h})=-(cA_{B}^{-1})u_{h}=-\bar y u_{h}=-y_{h}>0$$
		- Se considero un vincolo $i\in N$ e $A_{i} \xi \le 0$ allora $\bar x(\lambda)$ soddisfa il vincolo per ogni $\lambda \ge 0$
		- Mentre se $A_{i} \xi >0$:
			- $$A_{i} \bar x(\lambda)=A_{i}\bar x + \lambda A_{i}\xi\le b_{i} \iff  \lambda\le \frac{b_{i}-A_{i}\bar x}{A_{i}\xi}$$
				- E si sceglie l'indice $i$ tale che rende $\lambda$ minimo  
		- Se $0<\bar\lambda<\infty$ allora $\bar x(\lambda)$ è ammissibile $\forall \lambda\in [0,\bar \lambda]$. Ci si può quindi spostare da $B$ a $B\cup \{k\}-\{h\}$
			- Gestito dagli step 9 e 10
		- Se $\bar \lambda=0$ allora _la direzione non è ammissibile_ ma si cambia comunque la base come nell'altro caso ma rimanendo _sullo stesso vertice_ 
- # Complessità:
	- Si dimostra come ogni base ammissibile viene trattata al massimo una volta durante l'esecuzione.
	- Si avranno quindi al massimo $\binom{m}{n}$ iterazioni rischiando di diventare _esponenziale_ in $n$
	- Nel caso _medio_ si è nell'ordine del _polinomiale_.
	- 
- # Link Utili:
	- 
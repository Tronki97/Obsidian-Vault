---
tags: []
aliases: 
data: "`2024-08-31 20:05`"
---
- Fisso uno [[Spazio vettoriale]] V e una sua [[Base]] $\beta = v_1,...,v_n$ ordinata, poi prendo un vettore $v \in V$ t.c le sue [[Coordinate rispetto a una base||coordinate]] rispetto a $\beta$ sono$$v_{\beta}=\lambda_{1},...,\lambda_{n}:\  v=\lambda_1 v_1+...+\lambda_n v_n$$Ora considero la funzione $f_{\beta}: V\rightarrow \mathbb{R}^{n}$ definita come $v \rightarrow v_{\beta}$, ovvero una funzione che preso un vettore ci associa le sue coordinate rispetto ad una determinata base $\beta$, si dimostra che:
	- $f_\beta$ è [[iniettiva]].
	- $f_\beta$ è [[Suriettiva]].
	- $f_\beta$ rispetta la somma e il prodotto per scalari.
	In poche parole $f_{\beta}$ è un _isomorfismo_ di spazi vettoriali. Ed è proprio grazie alle proprietà degli isomorfismi che possiamo lavorare in V passando alle coordinate($\mathbb{R}^n$) per poi tornare in V
- ## Definizione:
	- Dati V, W [[Spazio vettoriale]], una funzione $f:V\rightarrow W$ si dice _applicazione lineare_ se si ha:
		- 1)$f(v+u)=f(v)+f(u)$
		- 2)$f(\lambda v)=\lambda f(v) \forall \lambda\in \mathbb{R}, \ \ \forall v\in V$ 
		Ovvero se rispetta la somma e il prodotto per scalari 
- ## ES:
	- $v \rightarrow v_{\beta}$
		- si ha che la funzione $f: V \rightarrow \mathbb{R}^{n}$ definita come $v \rightarrow v_{\beta}$, ovvero la funzione che associa ad un vettore le sue [[Coordinate rispetto a una base]] dello spazio a cui appartiene, è un'applicazione lineare 
	- $f\rightarrow f'$
		- Dato $V=f:\mathbb{R}\rightarrow \mathbb{R}$ un insieme di _funzioni derivabili_, $W=f:\mathbb{R}\rightarrow \mathbb{R}$ allora la funzione $d:V\rightarrow W$ definita come $f\rightarrow f'$ è lineare 
	- $\mathbb{R}^{n}\rightarrow \mathbb{R}^{m}$
		- ovvero tutte le [[Applicazioni lineari definite da una matrice]]
- ## Forme 
	- 3 modi per definire un'applicazione lineare.
		- 1)assegnare $f(e_{1}),...,f(e_{n})$ (_formula chiave_)
		- 2)dare la legge $f(x_{1},...,x_{n})=(\cdots)$
		- 3)dare la matrice $A$ dell'[[Applicazioni lineari definite da una matrice]] $L_{A}$
	- Passare da una all'altra è facile:
		- $1\longrightarrow 3$ si fa per definizione di $A$ mettendo quindi i risultati di $f(e_{1}),...,f(e_{n})$ nelle colonne di $A$ 
		- $3\longrightarrow 2$ si ottiene con la moltiplicazione $A \underline{x}=A\cdot \begin{pmatrix}x_{1}\\⋮\\x_{n}\end{pmatrix}$
		- $2\longrightarrow 1$ si ottiene calcolando i risultati di $f$ per ogni base canonica del dominio
	- N.B: ottenere la matrice $A$ è sempre comodo
- ## Proposizioni ^f4fef0
	- $f$ lineare $\implies f(0_{V})=0_{W}$
		- data una funzione $f:V \rightarrow W$ lineare, allora l'elemento neutro di V($0_V$) è mappato nell'elemento neutro di W($0_{W}$). è importante sapere che $f(0_{V})\ne 0_{W}\implies f$ non lineare e ciò è utile per controllare la linearità di un'applicazione.
		- #### Dimostrazione:
			- si dimostra con la seguente:$$f(0_{V})=f(0\cdot 0_{V})= 0\cdot f(0_{V})=0_{W}\in W$$
	- $f$ lineare $\implies ker(f)\le V$
		- ovvero che data una funzione $f:V \rightarrow W$ lineare, allora il suo [[Kernel]] è [[Sottospazio vettoriale||sottospazio]] di V
		- #### Dimostrazione:
			- applico la definizione di sottospazio; devo avere:
				- 1) $\underline{0}\in ker(f)$
				- 2) $v_{1}+v_{2}\in ker(f)\ \  \forall v_{1},v_{2}\in ker(f)$
				- 3)$\lambda v_{1}\in ker(f) \ \ \forall v_{1}\in ker(f)\ \ \forall \lambda \in \mathbb{R}$ 
			Il vettore nullo è in $ker(f)$ perché per linearità di $f$ devo avere $f(0_{V})=0_{W}$, per cui $\underline{0}\in ker(f)$ 
			se so per ipotesi che $v_{1},v_{2}\in ker(f)$, per la definizione di $ker(f)$ ho che $f(v_{1})=\underline{0}$ e $f(v_{2})=\underline{0}$ allora ottengo: $$f(v_{1}+v_{2})=f(v_{1})+f(v_{2})=\underline{0}+\underline{0}=\underline{0}$$Ovvero quello che volevo dimostrare.
			- Infine avendo $v_{1}\in ker(f)$ so che $f(v_{1})=\underline{0}$, allora ottengo:$$f(\lambda v_{1})=\lambda f(v_{1})=\lambda \underline{0}=\underline{0}$$
	- $f$ lineare $\implies Im(f)\le W$  
		- ovvero data una funzione $f:V \rightarrow W$ lineare, ho che l'[[Immagine di una funzione||immagine]] di $f$ è sottospazio di $W$ 
		- #### Dimostrazione:
			- applico la definizione di sottospazio, per cui devo dimostrare:
				- $\underline{0}\in Im(f)$
				- $w_{1}+w_{2}\in Im(f) \forall w_{1},w_{2}\in Im(f)$ 
				- $\lambda w_{1}\in Im(f) \ \ \forall w_{1}\in Im(f)\ \ \forall \lambda \in \mathbb{R}$ 
			- Il vettore nullo è nell'immagine di $f$ perché ho per forza che $f(0_{V})=0_{W}$ 
			- Fissati 2 vettori $w_{1},w_{2}\in Im(f)$, per definizione so che $\exists v_{1}|f(v_{1})=w_{1}$ e $\exists v_{2}|f(v_{2})=w_{2}$. Devo dimostrare $\exists v_{3}|f(v_{3})=w_{1}+w_{2}$. scelgo come $v_{3}=v_{1}+v_{2}$ e ottengo:$$f(v_{3})=f(v_{1}+v_{2})=f(v_{1})+f(v_{2})=w_{1}+w_{2}$$Ovvero ciò che dovevo dimostrare.
			- Per l'ultimo punto avendo $w_{1}\in Im(f)$ so che $\exists v_{1}|f(v_{1})=w_{1}$. Devo dimostrare che $\exists v_{2}|f(v_{2})=\lambda w_{1}$. Scelgo $v_{2}=\lambda v_{1}$ e ottengo$$f(v_{2})=f(\lambda v_{1})=\lambda f(v_{1})=\lambda w_{1}$$Ovvero ciò che dovevo dimostrare.
	- $f$ lineare $\implies f \  su \Longleftrightarrow Im(f)=W$
		- ovvero data $f:V \rightarrow W$ lineare, allora quest'ultima è [[Suriettiva]] sse l'immagine di $f$ coincide col codominio
			- vero per definizione di suriettività.
	- $f$ lineare $\implies f \  in \Longleftrightarrow ker(f)=\underline{0}$
		- ciò ci dice che affinché un'applicazione lineare sia iniettiva basta che l'unico mappato nel vettore nullo del codominio sia il vettore nullo del dominio: Questo criterio è sufficiente per capire se tutta la funzione sarà iniettiva.
		- #### Dimostrazione:
			- $\implies$)
				- suppongo che $f$ sia $in$ per cui $a\ne b \implies f(a)\ne f(b)\ \ \forall a,b$ e che $f(a)=f(b)\implies a=b\ \ \forall a,b$ . devo dimostrare che $ker(f)=\underline{0}$. dalle ipotesi scelgo $v\in ker(f)$ t.c $f(v)=\underline{0}=f(0_{V})$. Allora essendo iniettiva so che $v=0_{V}$ e quindi che $ker(f)=0_{V}=\underline{0}$ 
			- $\Longleftarrow$)
				- suppongo che $ker(f)=\underline{0}$. Dimostro che $f$ è $in$ ovvero che $a\ne b \implies f(a)\ne f(b)\ \ \forall a,b$ oppure $f(a)=f(b)\implies a=b\ \ \forall a,b$ . Suppongo per un qualche $a,b \in V, f(a)=f(b)$ che implica $f(a)-f(b)=\underline{0}$ uso la linearità di $f$ e ottengo che $f(a-b)=\underline{0}$. Ciò vuol dire che ho trovato un elemento del [[Kernel]] $a-b\in ker(f)$ e, per ipotesi so che deve essere $\underline{0}$. Allora $a-b=\underline{0}\implies a=b$ 
- ## Osservazioni:
	- come corollario della linearità di una funzione $f$ si ha che $$f(\lambda_1 v_1+...+\lambda_n v_n)=f(\lambda_{1}v_{1})+...+f(\lambda_{n}v_{n})=$$$$=\lambda_{1} f(v_{1})+...+\lambda_{n}f(v_{n})$$
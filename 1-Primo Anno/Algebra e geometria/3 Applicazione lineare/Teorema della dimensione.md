---
tags: []
aliases:
  - corollario sul teorema della dimensione
data: "`2024-08-31 20:05`"
---
- # Def:
	- Sia $f:V \rightarrow W$ un' [[Applicazione lineare]] allora si ha che:
		- $$\dim(V)=\dim(\ker(f))+\dim(Im(f))$$
	- Ovvero che la [[Dimensione]] del dominio V è uguale a alla somma di quella del [[Kernel]] di $f$ con quella dell' [[Immagine di una funzione||immagine]] di $f$
	- ### Dimostrazione 
		- Mi riduco a dimostrare 
			- $$dim(V)-dim(ker(f))=dim(Im(f))$$
		- Suppongo di avere una [[Base]] di V t.c $dim(V)=n$ la dimensione del kernel di $f$, supponendo di aver risolto il sistema lineare omogeneo associato alla [[Matrici||matrice]] $A$ che definisce l' [[Applicazione lineare]] $L_{A}=f$ sarà $r\le n$ dove r è il numero di _pivot_ di $A$ ridotta a scala. Quindi una base di $ker(f)$ sarebbe del tipo $v_1,...,v_{r}$ t.c $f(v_1),...,f(v_{r})=\underline{0}$. Sostituendo tali valori nell'equazione ottengo: 
			- $$dim(Im(f))=n-r$$
		- Poi per il [[Teorema del completamento]] possiamo completare la base di $ker(f)$ a una base di V, ottenendo
			- $$\beta=v_1,...,v_{r},v_{r+1},...,v_n$$
		- Ora si calcola la base di $Im(f)$ sapendo che vale 
			- $$Im(f)=\langle{f(v_1),...,f(v_{r})}\rangle$$
		- Per cui si dimostra che una base di $Im(f)$ è 
			- $$f(v_{r+1}),...,f(v_{n})$$
		- genera $Im(f)$ ed è [[Indipendenza lineare||linearmente indipendente]] per cui la base $Im(f)$ 
			- $$dim(Im(f))=n-r$$
- # Utilità 
	- Questo teorema risulta fondamentale nello sviluppo degli esercizi in cui non viene richiesto di conoscere il [[Sottospazio generato]] dal nucleo né il sottospazio generato dall'immagine, ma magari solo la loro dimensione: calcolando anche solo una delle due dimensioni, per questo teorema ricaviamo immediatamente quella dell'altro.
	- ad esempio:
		- per sapere se una certa $f:V \rightarrow W$ è [[Suriettiva]] ci basta avere che $dim(Im(f))=dim(W)$;
		- per sapere se una certa $f:V \rightarrow W$ è [[iniettiva]] basta avere che $dim(ker(f))=0$ 
- ## ES:
	- $\nexists f:\mathbb{R}^{5} \rightarrow \mathbb{R}^{3}|f\ \ è su$ 
		- procedendo per assurdo suppongo che $f$ sia iniettiva. Ciò significherebbe che $dim(ker(f))=0$. Il teorema della dimensione dice che deve valere che:
			- $$dim(\mathbb{R}^{5})=dim(ker(f))+dim(Im(f))$$
		- Ovvero 
			- $$5=0+dim(Im(f))$$
		- Ma sappiamo per ipotesi che $Im(f)\leq \mathbb{R}^{3}$ avendo quindi dimensione massima 3 risultando in 
			- $$5=3$$
		- Che è un assurdo.
- ## Corollario: ^e2ecda
	- #### Limite all'iniettività
		- sia  $f:\mathbb{R}^{n} \rightarrow \mathbb{R}^{m}$ t.c $n>m$ allora $f$ non è [[iniettiva]]
	- #### Limite alla suriettività
		- sia  $f:\mathbb{R}^{n} \rightarrow \mathbb{R}^{m}$ t.c $n<m$ allora $f$ non è [[Suriettiva]]
	- #### Iniettività $\iff$ Suriettività
		- siano $V,W$ [[Spazio vettoriale]] tali che $dim(V)=dim(W)$ e sia $f:V \rightarrow W$ lineare allora
			- $$f \ in \iff f\ su$$
		- #### Dimostrazione:
			- è una conseguenza diretta del [[Teorema del completamento]], infatti ho che se $dim(V)=dim(W)$ allora 
				- $$dim(V)=dim(ker(f))+dim(Im(f))=dim(W)$$
			- e allora:
				- $f$ è iniettiva $\implies dim(ker(f))=0\implies dim(V)=$
				  $=dim(Im(f))=dim(W)\implies f$ è suriettiva.
				- $f$ è suriettiva$\implies dim(Im(f)=dim(W))\implies dim(V)=$
				  $=dim(ker(f))+dim(W)=dim(W)\implies$
				  $dim(ker(f))=0\implies f$ è iniettiva  
	- #### Righe e colonne di una matrice
		- Sia $A \in M_{m\times n}(\mathbb{R})$ t.c $r_1,...,r_{m}$ sono le righe di di $A$ e $c_1,...,c_n$ sono le colonne, allora:
			- $$dim(\langle{r_1,...,r_{m}}\rangle)=dim(\langle{c_1,...,c_n}\rangle)$$
		- Ovvero il [[Sottospazio generato]] dalle righe e quello generato dalle colonne sono uguali. 
		- Da questa conseguenza sappiamo infatti che le righe e le colonne di una matrice vivono su spazi vettoriali di dimensione e fattezza diversi, ma la dimensione del dei diversi sottospazi generati da esse saranno uguali.
		- #### Dimostrazione:
			- Considerando un' [[Applicazione lineare]] $L_{A}:\mathbb{R}^{n} \rightarrow \mathbb{R}^{m}$ definita da una [[Matrici||matrice]] $A \in M_{m\times n}(\mathbb{R})$. Ho che $ker(L_{A})$ è definito come l'insieme delle soluzioni del sistema lineare omogeneo $A \underline{x}=\underline{0}$. Riducendo $A$ a scala, ottengo che il $ker(f)$ è l'insieme delle soluzioni dipendenti da $n-rr(A)$ variabili libere, ovvero
				- $$dim(ker(L_{A}))=n-rr(A)$$
			- Ora, considerando $Im(L_{A})$ so che si ricava da $A^{T}$ riducendo tale matrice a scala. Ottengo un certo valore $rr(A^{T})=rc(A)$ che corrisponde a $dim(Im(L_{A}))$ per cui: 
				- $$dim(Im(L_{A}))=rc(A)$$
			- Ora applicando il teorema della dimensione, che ci dice 
				- $$dim(\mathbb{R}^{n})=dim(ker(L_{A}))+dim(Im(L_{A}))$$
			- Per i risultati precedenti ottengo che: 
				- $$n=n-rr(A)+rc(A)$$
			- E quindi che 
				- $$rr(A)=rc(A)$$
			- E mi riduco a dire che: 
				- $$dim(\langle{r_1,...,r_{m}}\rangle)=dim(\langle{c_1,...,c_n}\rangle)$$
				- Qed. 
 
 
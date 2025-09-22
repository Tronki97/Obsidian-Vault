---
tags: 
aliases:
  - restrizione di una funzione alla sua immagine
  - spazio generato dall'immagine
data: "`2024-08-31 20:05`"
---
- Si definisce _immagine_ di una funzione $f$ il sottoinsieme degli elementi del codominio $C$ per cui esiste un elemento del dominio $D$ mappato su ognuno di essi, ovvero:$$Im(f):=c\in C|\exists d\in D. \ f(d)=c \subseteq C$$Oppure:$$Im(f)=f(d)|d\in D$$
- ## Restrizione di una funzione alla sua immagine 
	- Restringendo il codominio di una funzione alla sua immagine, la si rende [[Suriettiva]], o meglio:
		- $\forall f:\mathbb{A} \rightarrow \mathbb{B}$ si ha che $f$, vista come funzione del tipo:$f:\mathbb{A} \rightarrow Im(f)$ è suriettiva.
- ## Proposizioni:
	- ### Spazio generato dell'immagine ^c5e9e6
		- Sia $f:V \rightarrow W$ un'[[Applicazione lineare]] e $\beta = v_1,...,v_n$ [[Base]] di V, allora:$$Im(f)=\langle{f(v_{1}),...,f(v_{n})}\rangle$$ovvero l'immagine di $f$ è generata dal [[Sottospazio vettoriale||sottospazio]] delle immagini della base $\beta$ 
		- #### Dimostrazione:
			- per dimostrare l'uguaglianza tra due insiemi uso la doppia inclusione: devo quindi dimostrare che $Im(f)\subseteq \langle{f(v_{1}),...,f(v_{n})}\rangle$ e $\langle{f(v_{1}),...,f(v_{n})}\rangle \subseteq Im(f)$ quindi fisso una funzione $f:V \rightarrow W$ lineare.
				- $Im(f)\subseteq \langle{f(v_{1}),...,f(v_{n})}\rangle$
					- Usando la definizione di essere sottoinsieme mi riduco a dimostrare che fissato $w \in Im(f)$ devo avere che $w \in \langle{f(v_{1}),...,f(v_{n})}\rangle$. se $w \in Im(f)$ significa, per definizione, $\exists v\in V:f(v)=w$. Sapendo che $v \in V$ e che $v_1,...,v_n$ è base di V, posso dire che $v=\lambda_1 v_1+...+\lambda_n v_n$. Avendo $f(v)=w$ posso anche dire che:$$f(\lambda_1 v_1+...+\lambda_n v_n)=w$$Grazie alla linearità so che:$$\lambda_{1}f(v_{1})+...+\lambda_{n}f(v_{n})=w$$Ma ciò significa che $w$ è generato da una [[Combinazione lineare]] di $f(v_1),...,f(v_n)$ per cui ho che:$$w\in \langle{f(v_{1}),...,f(v_{n})}\rangle$$
				- $\langle{f(v_{1}),...,f(v_{n})}\rangle \subseteq Im(f)$
					- Usando sempre la definizione di essere sottoinsieme dimostro che fissato $w\in \langle{f(v_{1}),...,f(v_{n})}\rangle$ ho che $w\in Im(f)$. Per ipotesi so che: $$w=\lambda_{1}f(v_{1})+...+\lambda_{n}f(v_{n})$$ e posso quindi dire che $f(v)=w$ con $v=\lambda_1 v_1+...+\lambda_n v_n$ arrivando dunque a dimostrare che $w \in f(v)$ e quindi per definizione di immagine $w\in Im(f)$ 
- ## ES:
	- suppongo di avere un'[[Applicazioni lineari definite da una matrice]] $$A=\begin{pmatrix}1&3&2&1&1\\ 2&6&5&3&1\\0&0&4&4&-4\end{pmatrix}$$Con $L_{A}:\mathbb{R}^{5} \rightarrow \mathbb{R}^{3}$. se viene chiesto di calcolare $Im(L_{A})$, sfrutto la proposizione precedente. per cui prendo la base canonica $\beta=e_{1},...,e_{5}$ di $\mathbb{R}^{5}$, e calcolo $f(e_{1}),...,f(e_{5})$, ottenendo:$$Im(L_{A})=\langle{L_{A}(e_{1}),...,L_{A}(e_{5})}\rangle=$$$$=\langle{(1,2,0),(3,6,0),(2,5,4),(1,3,4),(1,1,-4)}\rangle$$Tale [[Sottospazio vettoriale||sottospazio]] non è altro che $A^{T}$ ovvero la [[Matrici#^9fad89|trasposta]] di $A$ 
	- Procedendo, per il [[Teorema del completamento#^9c1905||corollario del teorema del completamento]] so che questa non può essere una base di $Im(L_{A})$, perché questa vive nel codominio $\mathbb{R}^{3}$, e i vettori in questione sono 5. allora uso l'[[Algoritmo di Gauss]] in modo diretto e trovo una base del [[Sottospazio generato]] (l'ho risolto su carta e funziona)$$(1,2,0),(0,1,4)$$ da cui risulta $$dim(Im(L_{A}))=2$$
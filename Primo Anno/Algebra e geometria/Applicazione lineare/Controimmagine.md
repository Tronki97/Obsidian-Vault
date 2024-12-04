---
tags: []
aliases:
  - traslazione
data: "`2024-08-31 20:05`"
---
- Sia $f:A \rightarrow B$ una funzione, e sia $b\in B$ allora la _controimmagine_ di $b$ tramite $f$ è$$f^{-1}(b)=a\in A|f(a)=b$$Ciò però non è l'inversa di $f$ 
- ## Conseguenze
	- Si ha che la controimmagine di un certo $b$ tramite $f$ è l'insieme vuoto sse $b$ non è nell'[[Immagine di una funzione||immagine]] di $f$ ovvero $$f^{-1}(b)=\emptyset \Longleftrightarrow b\ne Im(f)$$
- ## Algebra lineare
	- si analizza la controimmagine di un'[[Applicazione lineare]] $f:V \rightarrow W$ dove $V,W$ sono [[Spazio vettoriale]] .
	- ### Casistiche:
		- per questa $f:V \rightarrow W$ lineare, preso un $w\in W$ si distinguono 2 casi: 
			- $w \ne \underline{0}\implies f^{-1}\nleq V$, questo perché $0_{V}\notin f^{-1}(w)$, infatti $f(0_{V})=0_{W}\ne w$;
			- $w=\underline{0}\implies f^{-1}\leq V$, questo perché $f^{-1}(w)=ker(f)\le V$
- ## ES:
	- Sia $f:\mathbb{R}^3 \rightarrow \mathbb{R}^{2}$ un'applicazione lineare definita da$$f(x_{1},x_{2},x_{3})=(x_{1}-x_{2},x_{1}+2x_{3})$$Viene chiesto di trovare $$f^{-1}(2,-3)$$Ovvero la controimmagine di $w=(2,-3)$.
	- Per prima cosa si scrive la matrice $A$ associata ad $f$$$A=\begin{pmatrix}1&-1&0\\1&0&2\end{pmatrix}$$Quindi applico la definizione di controimmagine$$f^{-1}(2,-3)=\underline{x} \in \mathbb{R}^{3}|f(\underline{x})=(2,-3)=$$$$=\underline{x} \in \mathbb{R}^{3}|A \underline{x}=(2,-3)$$Allora la controimmagine sarà l'insieme delle soluzioni del sistema lineare $A \underline{x}=(2,-3)$ da cui la matrice è$$(A|\underline{b})=\begin{pmatrix}1&-1&0|&2\\1&0&2|&-3\end{pmatrix}$$Applicando [[Algoritmo di Gauss||gauss]] si ottiene che$$rr(A)=2=rr(A|\underline{b})<3=n°incognite$$Per cui il sistema ha infinite soluzioni dipendenti da $3-2=1$ parametri e sis scrive:$$f^{-1}(2,-3)=(-2x_{3}-3,-2x_{3}-5,x_{3})|x_{3}\in \mathbb{R}=$$$$=(-3,5,0)+x_{3}(-2,-2,1)|x_{3}\in \mathbb{R}$$
- ## Proposizione ^70afd1
	- ### Soluzione di un sistema lineare ^07e889
		- la controimmagine di un'[[Applicazioni lineari definite da una matrice]] $A$ è definita come l'insieme delle soluzioni del sistema lineare.
		- Se per esempio si ha $f(L_{A}),$ allora posso scrivere la controimmagine di un certo $w \in W$ come$$f^{-1}(w)=v \in V|A v=w$$Che non è altro che l'insieme delle soluzioni del sistema lineare definito dalla matrice $$(A|w)$$
	- ### Traslazione ^c64144
		- Sia $f:V \rightarrow W$ lineare e $w \in W$, se $f^{-1}(w)\ne \emptyset$ allora fissato un $v \in f^{-1}(w)$ t.c $f(v)=w$ la controimmagine di $f$ può essere definita come $$f^{-1}(w)=v+z|z\in ker(f)$$Ciò vuol dire che la controimmagine di un'[[Applicazione lineare]] da V a W spazi lineari non è altro che il [[Kernel]] traslato di $v\in f^{-1}(w)$
		- La proposizione sorella di questa si chiama [[teorema di struttura per sistemi lineari]] e unisce semplicemente i risultati della proposizione precedente con questa.
		- #### Dimostrazione:
			- Dalle ipotesi so che $f^{-1}(w)\ne \emptyset$ quindi esiste per forza un $v\in f^{-1}(w)$ per cui $f(v)=w$ allora $f^{-1}(w)$ si può scrivere come:$$f^{-1}(w)=f^{-1}(f(v))$$E per la definizione di controimmagine:$$f^{-1}(f(v))=v'\in V|f(v')=f(v)=v' \in V|f(v')-f(v)=$$$$=0=v' \in V|f(v'-v)=\underline{0}$$Quindi l'insieme $v' \in V|f(v'-v)= \underline{0}$ non è altro che $v' \in V|(v'-v)\in ker(f)$ Per cui consegue che$$f^{-1}(w)=v' \in V |(v'-v)\in ker(f)$$
			- Ora fissato $z=v'-v\in ker(f)$ si ha che $v'=v+z\in V$ e allora la controimmagine può essere scritta come $$f^{-1}(w)=v+z\in V|z\in ker(f)$$e visto che so che $v+z=v+v'-v=v' \in V$ per ipotesi si giunge al fatto che $$f^{-1}(w)=v+z|z\in ker(f)$$
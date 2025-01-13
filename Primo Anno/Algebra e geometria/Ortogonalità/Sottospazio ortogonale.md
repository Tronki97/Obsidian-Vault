---
tags: 
aliases:
  - dimensione sottospazio ortogonale
  - equazioni cartesiane
data: "`2024-08-31 20:05`"
---
- # Def:
	- Sia $W\le \mathbb{R}^{n}$, quindi [[Sottospazio vettoriale||sottospazio]] dello [[Spazio vettoriale]] $\mathbb{R}^{n}$, allora si ha che $$W^{\bot}=v\in \mathbb{R}^{n}|<v,w>=0 \ \ \forall w\in W$$è un sottospazio di $\mathbb{R}^{n}$ e si dice _sottospazio ortogonale_ a $W$. Si tratta dell'insieme di tutti i vettori di $\mathbb{R}^{n}$ che sono [[Primo Anno/Analisi/modulo2/Ortogonalità|ortogonali]] a ogni vettore di $W$. si ha, ovviamente, che $W$ è ortogonale a $W^{\bot}$, perché vale:$$<v,w>=0\ \ \forall v\in W,\forall w \in W^{\bot}$$e si indica con $W^{\bot}\bot W$
- # Dimostrazione sottospazio
	- Dimostro che $W^{\bot}\le \mathbb{R}^{n}$ per definizione di sottospazio deve avvenire che 
		- $\underline{0}\in W^{\bot}$
		- $u+v\in W^{\bot}$ $\forall u,v\in W^{\bot}$ 
		- $\lambda u \in W^{\bot}$  $\forall u\in W^{\bot}$ $\forall \lambda \in \mathbb{R}$ 
	- $\underline{0}\in W^{\bot}$ 
		- Già verificato per il fatto che il vettore nullo è ortogonale a qualunque altro vettore, per cui fa parte di $W^\bot$
	- $u+v\in W^{\bot}$ $\forall u,v\in W^{\bot}$ 
		- fisso i due vettori $u,v\in W^\bot$, ovvero tali che $<u,w>=0$ $\forall w\in W$ e $<v,w>=0$ $\forall w \in W$. devo dimostrare che $u+v \in W^{\bot}$, ovvero che $$<u+v,w>=0\ \ \forall w\in W$$
		- Quindi uso la proprietà del prodotto scalare e ottengo:$$<u,w>+<v,w>=0\ \ \forall w\in W$$Il che risulta vero per le assunzioni iniziali.
	-  $\lambda u \in W^{\bot}$  $\forall u\in W^{\bot}$ $\forall \lambda \in \mathbb{R}$ 
		- fisso $u\in W^{\bot}$ t.c $<u,w>=0$ $\forall w\in W$, e fisso $\lambda \in \mathbb{R}$. devo dimostrare che $$<\lambda u,w>=0\ \ \forall w\in W$$Per le proprietà del prodotto scalare ottengo$$\lambda<u,w>=0\ \ \forall w\in W$$Il che è vero per le assunzioni iniziali 
- # Proposizioni
	- Sia $W=\langle{w_1,...,w_{k}}\rangle$, allora il _sottospazio ortogonale_ è dato da $$W^{\bot}=v\in \mathbb{R}^{n}|<v,w_{i}>=0\ \ \ \forall i=1,...,k$$Ovvero, per controllare che un vettore $v \in W^{\bot}$ basta verificare la perpendicolarità tra $v$ e $w_{i}$ per ogni $w_{i}$ che genera $W$.
	- ## Dimostrazione 
		- devo fondamentalmente dimostrare l'uguaglianza tra due insiemi e in particolare che se $v$ appartiene a $$v\in \mathbb{R}^{n}|<v,w_{i}>=0\ \ \ \forall i=1,...,k$$Allora automaticamente appartiene anche a $$v\in \mathbb{R}^{n}|<v,w>=0\ \ \ \forall w\in W$$
		- Assumo allora che $v\in v\in \mathbb{R}^{n}|<v,w_{i}>=0\ \ \ \forall i=1,...,k$ ossia che $$<v,w_{i}>=0\ \ \ \forall i=1,...,k$$Devo dimostrare che $v\in \mathbb{R}^{n}|<v,w>=0\ \ \ \forall w\in W$ ovvero che $$<v,w>=0\ \ \ \forall w\in W$$
		- Fisso $w\in W$, e so quindi che $w=\lambda_1 w_1+...+\lambda_{k} w_{k}$, per cui sostituisco nel prodotto scalare e ottengo:$$<v,\lambda_1 w_1+...+\lambda_{k} w_{k}>=0$$Per la bilinearità del prodotto scalare ho che $$\lambda_{1}<v,w_{1}>+...+\lambda_{k}<v,w_{k}>=0$$ Che è ovvio per l'ipotesi che $<v,w_{i}>=0\ \ \ \forall i=1,...,k$ 
- # ES:
	- Fissato $W=\langle{(1,0,0,1,1),(1,1,0,1,1),(0,0,1,0,-1),(2,1,1,2,1)}\rangle=$ $=\langle{w_{1},w_{2},w_{3},w_{4}}\rangle$  si deve trovare una base di $W^{\bot}$
	- Per svolgere l'esercizio utilizzo le equazioni cartesiane, ovvero risolvo il sistema associato a $$x=(x_{1},x_{2},x_{3},x_{4},x_{5})$$Questo avviene, per la proposizione appena fatta, $\iff$ $$<x,w_{i}>=0 \ \ \forall i=1,...4$$Per cui in un sistema lineare le condizioni affinché $x\in W^{\bot}$sono:$$\begin{cases}x_{1}+x_{4}+x_{5}=0\\x_{1}+x_{2}+x_{4}+x_{5}=0\\ x_{3}-x_{5}=0\\2x_{1}+x_{2}+x_{3}+2x_{4}+x_{5}=0\end{cases}$$Si nota facilmente che è un sistema omogeneo, infatti la soluzione nulla $x=\underline{0}$ è ortogonale a qualunque altro vettore ed è sempre in $W^{\bot}$(motivo per cui è un sottospazio)
	- Risolvendo con [[Algoritmo di Gauss||gauss]], si ottiene che le soluzioni dipendono da $5-3=2$ parametri, per cui.$$dim(W^{\bot})=5-3=2$$In particolare, trasformando le equazioni cartesiane risultanti in [[Sottospazio generato]], (ovvero trasformare la matrice a scala risultata in un sistema e trovare i 2 parametri da cui dipendono le soluzioni; infine sostituire la soluzione finale con i parametri impostati arbitrariamente a $0$ e poi $1$)si ottiene l base di $W^{\bot}$:$$W^{\bot}=\langle{(-1,0,0,1,0),(-1,0,1,0,1)}\rangle$$
- # Dimensione
	- Sia $W \le \mathbb{R}^{n}$ allora si ha che $$dim(W^{\bot})=n-dim(W)$$Una sorta ti [[Teorema della dimensione]] ma per spazi ortogonali.
	- ## Dimostrazione:
		- Suppongo che $W$ abbia dimensione $k\le n$ ovvero$$dim(W)=k\le n$$Per cui definisco una base $\beta=w_1,...,w_{k}$ di $W$ tale che $W=\langle{w_1,...,w_{k}}\rangle$.
		- Allora $W^{\bot}=v\in \mathbb{R}^{n}|<v,w_{i}>=0$  $\forall i =1,..,k$ ossia affinché un vettore di $\mathbb{R}^{n}$ $v$ appartenga a $W^{\bot}$ deve soddisfare $k$ condizioni su vettori di ordine $n$, ossia$$v\in W^{\bot}\iff \begin{cases}v_{1}w_{11}+...+v_{n}w_{1n}=0\\\vdots\\ v_{1}w_{k1}+...+v_{n}w_{kn}=0\end{cases}$$Il sistema è associato ad una matrice $A$ che ha per righe $w_1,...,w_k$, per cui si ottiene che$$W^{\bot}=v\in \mathbb{R}^{n}|A v=\underline{0}$$Ovvero il [[Kernel]].
		- So che almeno una soluzione esiste: quella nulla (perché si tratta di un sistema omogeneo). Perciò per il [[Teorema di Rouché-Capelli]], fissato $n$ come il numero di colonne di e $k$ come il rango della matrice associata(perché $w_1,...,w_k$ sono linearmente [[Indipendenza lineare||linearmente indipendenti]]), la soluzione del sistema dipenderà da $n-k$ parametri, per cui la dimensione di $W^{\bot}$ sarà proprio $n-k$ $$dim(W^{\bot})=n-k=n-dim(W)$$
		 
	- ## Intersezione 
		- sia $W\le \mathbb{R}^{n}$, allora si ha che $$W\cap W^\bot=\underline{0}$$
		- ### Dimostrazione
			- fisso $v\in W\cap W^\bot$ e dimostro che $v=\underline{0}$ 
			- sia $v\in W$ e sia $v\in W^{\bot}$t.c:$$<v,w>=0\ \ \forall w\in W$$Allora ho anche$$<v,v>=0\implies v=\underline{0}$$ 
 
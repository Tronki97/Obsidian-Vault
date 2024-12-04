---
tags: []
aliases: 
data: "`2024-08-31 20:05`"
---
- Uno [[Sottospazio generato]] di $\mathbb{R}^{n}$ si può assegnare in 2 modi:
	- 1) $V=\langle{v_1,...,v_{k}}\rangle$ ovvero fornendo un insieme di generatori;
	- 2) $V=\underline{x}\in \mathbb{R}^{n}|A \underline{x}=\underline{0}$ ovvero come insieme delle soluzioni di un sistema omogeneo che identifica il [[Kernel]], quindi fornendo delle equazioni che danno queste soluzioni
- ## Passaggi:
	- $2\to 1$
		- passare dalle soluzioni del sistema omogeneo all'insieme di generatori:
			- 1)date le equazioni costruisco la [[Applicazioni lineari definite da una matrice||matrice associata]] $A$ attraverso le [[Immagine di una funzione||immagini]] della [[Base Canonica]] di $\mathbb{R}^{n}$ 
			- 2) scrivo la matrice del sistema $A \underline{x}=\underline{0}$ associata e riduco a scala usando [[Algoritmo di Gauss||gauss]] 
			- 3) raccolgo i parametri ottenendo l'insieme generatore delle soluzioni del sistema 
	- $1\to 2$
		- 1) considero il sistema lineare associato alla matrice con colonne i vettori generatori $v_1,...,v_{k}$ e come colonna dei termini noti $x_{1},...,x_{n}$
		- 2)riduco a scala la matrice e impongo $r(A)=r(A|\underline{b})$
		- 3) ciò che risulta sono le _equazioni cartesiane_
	 N.B: Se lo spazio V è uguale a uno spazio euclideo  $\mathbb{R}^{n}$ allora l'insieme delle equazioni cartesiane è l'_insieme vuoto_, perché affinché un vettore $\underline{x}=(x_1,...,x_n)$ appartenga a $V=\mathbb{R}^{n}$ non c'è alcuna condizione da imporre su $x_1,...,x_n$ 
	 N.B.B: Ogni equazione cartesiana abbassa di 1 la dimensione di $V$ rispetto allo spazio _euclideo_ di riferimento 
- ## ES:
	- Prendo lo spazio $V=\langle{(1,1,0,3),(2,2,1,3)}\rangle=\langle{v_{1},v_{2}}\rangle$ (non obbligatoriamente basi di $V$). Mi chiedo quando un vettore $\underline{x}=(x_{1},x_{2},x_{3},x_{4})$ appartenga a $V$. per la definizione di [[Sottospazio generato]] ho che $$\underline{x}\in V\iff \exists \lambda_{1},\lambda_{2}\in \mathbb{R}|\lambda_{1}v_{1}+\lambda_{2}v_{2}$$Ovvero se $\exists \lambda_{1},\lambda_{2}:(x_{1},x_{2},x_{3},x_{4})=\lambda_{1}(1,1,0,3)+\lambda_{2}(2,2,1,3)$
	- Scrivo il sistema lineare associato:
		- $$\begin{cases}x_{1}=\lambda_{1}+2\lambda_{2}\\x_{2}=\lambda_{1}+2\lambda_{2}\\ x_3=\lambda_{2}\\x_{4}=3\lambda_{1}+3\lambda_{2}\end{cases}$$
		Queste sono dette _equazioni parametriche_ di $V$, perché al variare di $\lambda_{1},\lambda_{2}\in \mathbb{R}$ si ottengono tutti i vettori di $V$. Ma io voglio sapere: quali condizioni su $x_{1},x_{2},x_{3},x_{4}$ devono essere applicate per consentire un'eventuale combinazione di $\lambda_{1},\lambda_{2}$ di far appartenere $\underline{x}$ a $V$. Quindi l'_obbiettivo_ ora è quello di _passare dalle equazioni parametriche a quelle cartesiane_. 
	- Quindi come prossimo step costruisco la matrice associata al sistema lineare nelle incognite $\lambda$ $$\begin{pmatrix}1&2|&x_{1}\\1&2|&x_{2} \\ 0&1|&x_{3}\\3&3|&x_{4}\end{pmatrix}$$Riducendola a scala diventa $$\begin{pmatrix}1&2|&x_{1}\\0&0|&x_{2}-x_{1} \\ 0&1|&x_{3}\\0&0|&x_{4}+3x_{3}-3x_{1}\end{pmatrix}\to \begin{pmatrix}1&2|&x_{1}\\ 0&1|&x_{3}\\0&0|&x_{2}-x_{1} \\0&0|&x_{4}+3x_{3}-3x_{1}\end{pmatrix}$$Perciò, affinché il sistema abbia soluzione $rr(A)=rr(A|\underline{b})$ e ciò avviene $\iff$ $$(x_{2}-x_{1}=0)\wedge (x_{4}+3x_{3}-3x_{1}=0)$$O scritto a sistema:$$\begin{cases}x_{2}-x_{1}=0\\ x_{4}+3x_{3}-3x_{1}=0 \end{cases}$$queste sono le equazioni cartesiane di $V$, perché identificano i criteri affinché un vettore $\underline{x}=(x_{1},x_{2},x_{3},x_{4})$ appartenga a V e quindi si scrive:$$V= (x_{1},x_{2},x_{3},x_{4})\in \mathbb{R}^{4}|x_{2}-x_{1}=0, x_{4}+3x_{3}-3x_{1}=0$$_N.B:_ si riconferma l'osservazione sulla dimensione di $V$. Infatti $V\le \mathbb{R}^{4}$, e il numero di equazioni cartesiane è 2. Infatti $dim(V)=dim(\mathbb{R}^{4})-2=2$.
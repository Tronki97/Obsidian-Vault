---
tags: []
aliases: 
data: "`2024-08-31 20:05`"
---
- # Def:
	- Il kernel (nucleo) [[Applicazione lineare]] $f:V \rightarrow W$ è definito come
		- $$ker(f)=v\in V|f(v)=\underline{0}$$
	- Ovvero l'insieme di tutti i vettori appartenenti a V la cui immagine è il vettore nullo ($\underline{0}$) in W
- # ES:
	- data una funzione $f:\mathbb{R}^{3} \rightarrow \mathbb{R}^{2}$ definita come $(x_{1},x_{2},x_{3})\longrightarrow (x_{1}+x_{2},x_{1}-x_{3})$ lineare, devo trovare $ker(f)$. Applico la definizione di kernel su $f$:
		- $$\begin{array}\  ker(f)=(x_{1},x_{2},x_{3})|f(x_{1},x_{2},x_{3})=\underline{0}=\\ \\ =(x_{1},x_{2},x_{3})|(x_{1}+x_{2},x_{1}-x_{3})=(0,0)\end{array} $$ 
	- Il nucleo, allora sarà formato da tutte quelle coppie di valori per cui vale $(x_{1}+x_{2}=0)\wedge (x_{1}-x_{3}=0)$ ovvero il sistema: 
		- $$\begin{cases}x_{1}+x_{2}=0\\x_{1}-x_{3}=0\end{cases}$$
	- N.B: si tratta di un sistema lineare omogeneo, per cui sicuramente sappiamo che $ker(f)\ne \emptyset$ ma ciò lo sappiamo per la [[Applicazione lineare#^f4fef0||proposizione]] che per ogni funzione lineare $f$ si deve avere $f(\underline{0})=\underline{0}$
	- Risolvendo il sistema ci accorgiamo che i valori dipendono da 1 variabile libera, risolvendo con [[Algoritmo di Gauss||gauss]] ci verrebbe $rr(A)=2=rr(A|\underline{b})<3=n°$ di incognite. Infatti possiamo scrivere le soluzioni come dipendenti da $x_{1}$:
		- $$\begin{cases}x_{2}=-x_{1}\\x_{3}=x_{1}\end{cases}$$ 
	- Da cui otteniamo che 
		- $$ker(f)=(x_{1},-x_{1},x_{1})|x_{1}\in \mathbb{R}$$ 
	- Fattorizzando $x_{1}$ risulta: 
		- $$ker(f)=x_{1}(1,-1,1)|x_{1}\in \mathbb{R}=\langle{(1,-1,1)}\rangle$$
	- Ovvero il [[Sottospazio generato]] dal vettore $(1,-1,1)$ 
	- _N.B_: se ci venisse chiesto se $f$ fosse iniettiva la risposta sarebbe no perché: $ker(f)\ne \underline{0}$ 
 
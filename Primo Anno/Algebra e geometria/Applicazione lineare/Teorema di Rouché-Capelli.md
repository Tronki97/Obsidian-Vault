---
tags: []
aliases: 
data: "`2024-08-31 20:05`"
---
- Questo teorema, mette in luce il legame tra i sistemi lineari  e le [[Applicazione lineare||applicazioni lineari]], e dice che un sistema lineare $A \underline{x}=\underline{b}$ dove $A\in M_{m\times n}(\mathbb{R})$ ha soluzione $\iff rk(A)=rk(A|\underline{b})$. Se il sistema ha soluzione allora per $rk(A)=rk(A|\underline{b})=r$ e per $n$ come numero di colonne e quindi di incognite si ha:
	- $r=n\implies$il sistema ha 1 soluzione
	- $r<n\implies$il sistema ha infinite soluzioni che dipendono da $n-r$ parametri.
	N.B: Questo teorema dimostra dei risultati, dati per scontato nella risoluzione di sistemi lineari adottati su di una matrice $A$ ridotta a scala con [[Algoritmo di Gauss||gauss]], usando gli strumenti dell'algebra lineare finora studiati.
- ### Dimostrazione:
	- #### 1°Parte
		- Dimostro che $A \underline{x}=\underline{b}$ ha soluzione $\iff rk(A)=rk(A|\underline{b})$. definita $L_{A}:\mathbb{R}^{n}\to \mathbb{R}^{m}$ come l'[[Applicazioni lineari definite da una matrice]] $A$, si ha che $L_{A}(\underline{x})=A \underline{x}$, e perciò che la [[Controimmagine]] $L^{-1}_{A}(b)$ è esattamente $$L^{-1}_{A}(b)=\underline{x} \in \mathbb{R}^{n}|A \underline{x}=\underline{b}$$Ovvero l'insieme delle soluzioni del sistema $A \underline{x}=\underline{b}$. Di fatto si da [[Controimmagine#^70afd1||questa proposizione]] che ogni controimmagine può essere vista come l'insieme delle soluzioni di un sistema lineare.
		  Allora si ottiene la seguente catena di equivalenze$$A \underline{x}=\underline{b} \ \mathbf{ha\  soluzione} \iff L_{A}^{-1}(b)\ne \emptyset$$e$$L^{-1}_{A}(b) \neq \emptyset \iff b \in Im(L_{A})$$
		  che per [[Immagine di una funzione#^c5e9e6||questa proposizione]] per $Im(L_{A})$ si ha che $$b\in Im(L_{A})\iff b\in \langle{c_1,...,c_n}\rangle$$Dove $c_1,...,c_n$ sono le colonne di $A$ (ovvero $L_{A}(e_{1}),...,L_{A}(e_{n})$). Allora per [[Sottospazio generato#^e08177||questa proposizione]] si ha che :$$b\in \langle{c_1,...,c_{n}\rangle}\iff \langle{c_1,...,c_n}\rangle=\langle{c_1,...,c_n,b}\rangle$$e avendo che $\langle{c_1,...,c_{n}\rangle}\le \langle{c_1,...,c_n,b}\rangle$ per [[Dimensione#^bf4054||quest'altra proposizione]] posso dire che$$\langle{c_1,...,c_n}\rangle=\langle{c_1,...,c_n,b}\rangle\iff dim(\langle{c_1,...,c_n}\rangle=dim(\langle{c_1,...,c_n,b}\rangle)$$Dove sappiamo per costruzione della matrice $A$ che $dim(\langle{c_1,...,c_n}\rangle)=rc(A)$ mentre $dim(\langle{c_1,...,c_{n},b}\rangle=rc(A|\underline{b}))$. Per cui deve risultare che$$rc(A)=rc(A|\underline{b})$$ovvero per il [[Teorema della dimensione#^e2ecda||corollario del teorema della dimensione]] che $$rk(A)=rk(A|\underline{b})$$
	- ####  2°parte
		- Suppongo che il sistema $A \underline{x}=\underline{b}$ abbia soluzione, per cui $rk(A)=rk(A|\underline{b})$ devo dimostrare che:
			- $rk(A)=n\implies$ 1 soluzione
			- $rk(A)<n\implies$ infinite soluzioni dipendenti da $n-rk(A)$ parametri.
		- $rk(A)=n$
			- Se so che $rk(A)=rc(A)=n$ e che $Im(L_{A})=\langle{(c_1,...,c_n)}\rangle$ allora $c_1,...,c_n$ sono linearmente indipendenti e generano $Im(L_{A})$: sono [[Base]] dell'immagine. Allora$$dim(Im(L_{A}))=n$$Ora per il [[Teorema della dimensione]] devo avere che$$dim(\mathbb{R}^{n})=dim(ker(L_{A}))+dim(Im(L_{A}))\iff$$$$\iff n=dim(ker(L_{A}))+n\iff dim(ker(L_{A}))=0$$Per cui ho dimostrato che $L_{A}$ è [[iniettiva]] e [[Suriettiva]], e in particolare che $dim(ker(L_{A}))=0$ ovvero che $ker(L_{A})=(0,...,0)$.
			- Ora posso scrivere per il [[teorema di struttura per sistemi lineari]] la soluzione di $A \underline{x}=\underline{b}$ come$$S=v+z|z\in ker(L_{A})$$Dove $v \in L^{-1}_{A}(b)$ e sapendo che $ker(L_{A})=(0,...,0)$ mi rimane che$$S=v$$per cui ho 1 soluzione.
			  Qed.
		- $rk(A)<n$
			- se $rk(A)=rc(A)<n$ e $Im(L_{A})=\langle{c_1,...,c_n}\rangle$ allora significa $c_1,...,c_n$, sono [[Indipendenza lineare||linearmente indipendenti]] e perciò:$$dim(Im(L_{A}))=rc(A)<n$$Poi, sempre per il teorema della dimensione devo avere che:$$dim(\mathbb{R}^{n})=dim(ker(L_{A}))+dim(Im(L_{A}))\iff $$$$\iff n=dim(ker(L_{A}))+rk(A)$$E ciò avviene allora $\iff$$$dim(ker(L_{A}))=n-rk(A)>1$$Poi per il [[teorema di struttura per sistemi lineari]] la soluzione di$A \underline{x}=\underline{b}$ può essere scritta come:$$S=v+z|z\in ker(L_{A})$$Dove $v \in L^{-1}_{A}(b)$ e sapendo che $dim(ker(L_{A}))=n-rk(A)$, ho infiniti vettori di $S$ che dipendono proprio da $n-rk(A)$ parametri. Infatti fissato $t=n-rk(A)$, allora $ker(L_{A})=\langle{v_1,...,v_{t}}\rangle$. Quindi se $z\in ker(L_{A})$significa che $\exists \lambda_{1},...,\lambda_{t}$ t.c $z=\lambda_1 v_1+...+\lambda_{t} v_{t}$. Allora se questo vale per ogni $z\in ker(L_{A})$ e $S=v+z$, si ha che le soluzioni dipendono da $\lambda_{1},...,\lambda_{t}$, ovvero da $t=n-rk(A)$ parametri.
			  Qed.
 
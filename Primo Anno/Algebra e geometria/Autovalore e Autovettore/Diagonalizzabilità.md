---
tags: []
aliases: 
data: "`2024-08-31 20:05`"
---
- # Def:
	- Un [[Applicazione lineare]] $f:\mathbb{R}^{n} \to \mathbb{R}^{n}$ [[Applicazioni lineari definite da una matrice||definita da una matrice]] $M$ si dice _diagonalizzabile_ se esiste una [[Base]] $\beta$ di $\mathbb{R}^{n}$ tale che $M_{\beta}^{\beta}(f)$ sia _diagonale_
- # Proposizioni
	- ## Legame con autovettori
		- Prendo per esempio $f:\mathbb{R}^{2} \to \mathbb{R}^{2}$ t.c. $f(e_{1})=e_{2}$ e $f(e_{2})=e_{1}$ ovvero un'applicazione lineare che _flippa_ lo spazio $\mathbb{R}^{2}$, creando una simmetria rispetto alla retta $y=x$. Di fatto si ha che $(x_{1},x_{2})\to (x_{2},x_{1})$. Ci sono quindi dei vettori, come $(2,1)\to (1,2)$ che invertono simmetricamente a $y=x$ la loro direzione e altri invece la mantengono: proprio gli [[Autovettore||autovettori]]. In particolare, tutti i vettori sulla retta $y=x$ e $y=-x$ sono autovettori. Si può pensare a:
			- $v_{1}=(1,1)\to (1,1)$ con [[Autovalore]] 1
			- $v_{2}=(1,-1)\to(-1,1)=-1(1,-1)$ con autovalore $-1$
		- Osservo ora che $\beta=v_{1},v_{2}$ è base di $\mathbb{R}^{2}$(dal [[Teorema GEL]]). Allora trovo $A_{\beta \beta}$:
- # Verificare che sia diagonalizzabile:
	- ## Metodo 1:
	    - Trovo gli [[Autovalore]] di $A$ e gli [[Autovettore]] associati
	    - se trovo $n$ autovalori distinti allora $A$ è diagonalizzabile
	- se gli autovalori non sono distinti allora posso trovare una base di autovettori e verificare che sia una base di $\mathbb{R}^{n}$ 
---
tags:
  - TODO
aliases: 
data: "`2025-02-25 13:11`"
---
- # Intro:
	- conosco $\mathbb{P}(A)$ si verifica $B$ e mi chiedo come condizioni $A$ 
- # Notazione:
	- $P(A|B)$ ($P(.|B), B\subseteq \Omega$) probabilità di $A$ condizionato a $B$ 
- # ES:
	- lancio del dado $\Omega=\{1,2,3,4,5,6\}$
	- $\mathbb{P}(\{w\})=\frac{1}{|\Omega|} \ \forall w \in \Omega$ ovvero:
		- $$\mathbb{P}(A)= \frac{\text{\# casi favorevoli}}{\text{\# casi possibili}}$$
	- $A=$ numero $\ge 3= \{3,4,5,6\}\to \mathbb{P}(A)=\frac{4}{6}=\frac{2}{3}$
	- $B$ = numero pari = $\{2,4,6\}$
	- $\mathbb{P}(A|B)$
		- $$\mathbb{P}(A|B)=\frac{\text{\# veri casi favorevoli per A}}{\text{\# veri casi possibili}}$$
- # ES:
	- D4 truccato
	- $$\mathbb{P}(\{4\})=\frac{1}{15}, \mathbb{P}(\{3\})=\frac{2}{15} ,  \mathbb{P}(\{2\})=\frac{4}{15}, \mathbb{P}(\{1\})=\frac{8}{15} $$
	- $\Omega = \{ 1,2,3,4\}$ , $A=\{3,4\}=n^{°}\ge 3$,  $B=\{2,4\}$= numero pari
	- $$P(A|B)=\frac{\text{P(casi favorevoli di A)}}{\text{P(veri casi possibili)}}=\frac{\mathbb{P}(\{4\})}{\mathbb{P}(\{2\})+\mathbb{P}(\{4\})}=\frac{1}{5}$$
- # Def:
	- $A,B$ sono eventi sullo spazio $(\Omega, \mathbb{P})$ con:
		- $\mathbb{P}(B)>0$ viene definita quindi condizionata a $B$ la funzione:
			- $$\mathbb{P}(A|B)=\frac{\mathbb{P}(A\cap B)}{\mathbb{P}(B)}$$
	- ## OSS:
		- se $\mathbb{P}(.)$ è la probabilità uniforme:
			- $$\mathbb{P}(A)=\frac{|A|}{|\Omega|}; \ \ \mathbb{P}(A|B)=\frac{\mathbb{P}(A\cap B)}{\mathbb{P}(B)}=\frac{|A\cap B|}{|\Omega|}* \frac{|\Omega|}{|B|}=\frac{|A \cap B|}{|B|}$$
	- ## OSS:
		- $$\mathbb{P}(A|B)\ne \mathbb{P}(B|A)$$
		- $$B=\Omega \implies \mathbb{P}(A|B)=\frac{\mathbb{P}(A\cap B)}{1} = \mathbb{P}(A|\Omega)=\mathbb{P}(A)$$
		- $$A=\Omega \implies \mathbb{P}(A|B)=\frac{\mathbb{P}(\Omega\cap B)}{\mathbb{P}(B)}=\frac{\mathbb{P}(B)}{\mathbb{P}(B)}=1$$
		- $\forall B \subseteq \Omega$, $\mathbb{P}(.|B): \mathbb{P}(\Omega)\to [0,1]$    : $A \to \mathbb{P}(A|B)$   
	- Ciò verifica tutte le [[Proprietà delle probabilità]] 
			
- # Link Utili:
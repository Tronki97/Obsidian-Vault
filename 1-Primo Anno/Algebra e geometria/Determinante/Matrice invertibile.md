---
tags: 
aliases:
  - calcolo dell'inversa
data: "`2024-08-31 20:05`"
---
- # Def:
	- Una [[Matrici||matrice]] $A\in M_{n}(\mathbb{R})$ si dice _invertibile_ $\iff$
		- $$\exists B\in M_{n}(\mathbb{R}):AB=BA=I_{n}$$
	- Ovvero se esiste una matrice $B$ dello stesso tipo di $A$ tale il [[Matrici#^f58df4||prodotto]] $AB$ e $BA$ dia sempre come risultato la [[Matrice identità]]. In tal caso $B$ si dice l'_inversa_ di $A$ e si indica con 
		- $$A^{-1}$$
- # Calcolo
	- Un metodo comune per calcolare l'inversa di una matrice quadrata $A$ invertibile, ovvero per cui $det(A)\ne 0$ [[Determinante#^65c54b||da questa proposizione]], è quella di usare la [[Algoritmo di Gauss||riduzione di gauss]] su 
		- $$A|I$$
	- dove $I$ è la [[Matrice identità]] dello stesso ordine di $A$. Infatti con gauss è sempre possibile arrivare alla forma 
		- $$I|B$$
	- e si ottiene 
		- $$B=A^{-1}$$
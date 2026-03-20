---
tags: []
aliases: 
data: "`2024-08-31 20:05`"
---
- # Def:
	- Dati $a,b,c\in \mathbb{N}$  $\exists r,s\in \mathbb{Z}$ tali che:
		- $$mcd(a,b)=ra+sb$$
	- parto avendo già eseguito l' [[Algoritmo di Euclide]] per trovare $mcd(603,207)=9$ Per vedere il funzionamento di Bézout bisogna tornare indietro ricavando i resti e sostituendoli: 
		- $$\begin{array}\  9=63-18*3=63-(270-63*4)*3=63(1+12)-3(270)=\\ \\  =13(603-2*270)-3(270)=13(603)+270(-26-3)= \\ \\ =13(603)-29(270) \end{array} $$
	- Dove $r=603$ e $s=-29$ 
	- ## identità
		- l'identità dice che 
			- $$\exists r,s:mcd(a,b)=ra+sb=1$$
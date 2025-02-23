---
tags:
  - TODO
aliases: 
data: "`2025-02-23 16:53`"
---
- # Programmazione lineare.
	- un problema di _programmazione lineare (PL)_ è un [[Secondo Anno/Ottimizzazione combinatoria/Problemi e modelli/Problemi di ottimizzazione||problema di ottimizzazione]] definito dando :
		- un numero finito $n\in \mathbb{N}$ di _variabili reali_
			- $$x=(x_1,...,x_{n})\in \mathbb{R}^{n}$$
		- una funzione obiettivo $f: \mathbb{R}^{n}\to \mathbb{R}$ nella forma:
			- $$f(x)=cx$$
		- un insieme di $m$ _vincoli lineari_ in una delle seguenti forme:
			- $$ax=b \ \ \ \ ax\le b \ \ \ \ ax\ge b$$
			- dove $a\in \mathbb{R}^{n}$ e $b\in \mathbb{R}$
	- spesso si assume che $x\in \mathbb{Z}^{n}$ ovvero che le soluzioni ammissibili siano _vettori di interi_ e quindi si parla di _programmazione lineare intera_.
	- un problema di PL può essere sempre espresso nella forma:
		- $$max\{cx|Ax\le b \}$$
		- $A\in \mathbb{R}^{m \times n}$ e $b\in \mathbb{R}^{m}$ infatti:
			- se $\mathcal{P}$ e un [[Secondo Anno/Ottimizzazione combinatoria/Problemi e modelli/Problemi di ottimizzazione#^b8bf5e|problema di minimo]] basta considerare $f(x)=(-c)x$.
			- Ogni vincolo $ax=b$ diventa la coppia di vincoli $ax\le b$ e $ax\ge b$
			- ogni vincolo $ax\ge b$ è equivalente a $(-a)x\le (-b)$
- # ES:
	- 
- # Link Utili:
	- 
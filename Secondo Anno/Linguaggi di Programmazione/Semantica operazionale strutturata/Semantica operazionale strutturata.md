---
tags: []
aliases:
  - sistema di transizione
date: 2024-10-30
---

- ## Linguaggio:
	- definito tramite sintassi astratta(semplice ma [[Ambiguità||ambigua]]) 
	- una stringa viene sempre associata ad un [[Alberi di derivazione#^c6e9bf||albero sintattico]] (non ambigua)
- ## Insiemi di base:
	- booleani: $\{tt,ff\}$ _metavariabili_ $t,t_{1},t'\in \pi$ 
	- numeri naturali: $\{1,2,...\}\in \mathbb{N}$ 
	- variabili: $\{a,b,c,...,z\}\in \mathbf{Var}$ 
- ## Insiemi derivati:
	- ![[Pasted image 20241001110818.png]]
	- sintassi non ambigua molto complicata ma non serve nel dare la [[Semantica e sintassi#^78ca9a||semantica]]
	- Infatti il [[Analisi sintattica||Parser]] dalla [[Sintassi concreta e astratta||sintassi concreta]] tira fuori l'albero sintattico di sintassi astratta 
	- Quindi per dare semantica si può partire da quegli alberi.
- ## Sistema di transizione: ^9bf154
	- una tripla $<\Gamma, T, \to >$
		- $\Gamma$ l'insieme di stati 
		- $T\subseteq \Gamma$ insieme degli stati terminali.
		- $\to \subseteq \Gamma \times \Gamma$ è la relazione di transizione.
	- una computazione che parte da uno stato $\gamma_0$ è una sequenza $\gamma_{0} \to \gamma_{1}\to ...$ che può essere finita o non
	- con $\to^*$ indico la chiusura riflessiva:
		- ![[Pasted image 20241001111738.png]]
	- ### ES:
		- ![[Pasted image 20241001111806.png]]
		- i nodi sono gli stati e le frecce le transizioni.
	- ### Problemi:
		- 1) necessitiamo di trovare una rappresentazione finita di $\Gamma$ attraverso [[Grammatiche]] 
			- #### Es:
				- $\Gamma_{e}=\{<e,\sigma>|e\in Exp, \sigma\in \mathbf{Store}\}$
				- $Exp$ è definito in [[Grammatiche#^0c16bf||BNF]] 
		- 2) $\to \subseteq \Gamma \times \Gamma$ è costituita di solito da infinite coppie $\gamma\to \gamma'$ quindi necessitiamo di trovare una rappresentazione finita come minima relazione che soddisfa un certo insieme _finito di assiomi e regole di inferenza_
		- 3) Per dare un significato alle variabili (che possono assumere solo valore su $\mathbb{N}$) si introduce uno $\mathbf{Store}\ \sigma: Var \to \mathbb{N}$ come una funzione che associa ad ogni variabile un valore $$\sigma=\left\{ \frac{x_{1}}{n_{1}}, \frac{x_{2}}{n_{2}},...,\frac {x_{k}}{n_{k}} \right\}$$  
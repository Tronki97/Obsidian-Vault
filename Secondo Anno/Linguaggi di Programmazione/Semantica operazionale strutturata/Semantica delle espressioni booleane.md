---
tags: []
aliases:
  - espressioni booleane
date:
---
- # Semantica delle espressioni booleane:
	- $$b::= t\ |\ e=e\ |\ b \vee b\ |\ \neg b$$
	- $<\Gamma_{b}, T_{b}, \to_{b}>$ dove $\Gamma_{b}=\{<b, \sigma>\ |\ b\in Bexp,\ \sigma \in Store\}$ 
	  $T_{b}=\{<tt, \sigma>, <ff, \sigma>\ |\ \sigma \in Store\}$
	  $e \to_{b}$ è la minima relazione generata dai seguenti assiomi:
		- ![[Pasted image 20241002204311.png]]
		  ![[Pasted image 20241002204331.png]]
	- ### Osservazioni:
		- 1) lo store non viene mai modificato durante la valutazione di una $Bexp$ (_Eq3, Or2, Or3, Neg2_) per lo stesso motivo dell'[[Semantica delle espressioni aritmetiche#^e0325b||osservazione 1 della semantica dell'aritmetica]]  
		- 2) $\to_{b}$ è deterministica come fatto [[Semantica delle espressioni aritmetiche#^48bf4e||qui]], per cui si può definire:$$eval_{b}(b,\sigma)=\begin{cases}t & <b,\sigma>\to^{*} <t, \sigma>\\ indefinito & altrimenti\end{cases}$$
			- $b\equiv b'\iff \forall \sigma\in Store,\ \ \ eval_{b}(b,\sigma)=eval_{b}(b',\sigma)$ 
			- ES: $\neg((3=v)\vee (3=4))\equiv \neg(v=3)$
	- si potrebbero definire regole di valutazione diverse per l'_or_ da _ES_ come _ED_ o _IS_, ma non sono tutte equivalenti:
		-  ![[Pasted image 20241002205419.png]]
		- #### ES:
			- $\gamma=<(3-5)=6 \vee tt, \sigma>$
			- $\gamma\not\to_{ES}$ perché $3-5$ è bloccato ovvero _sub3_ non è applicabile
			- $\gamma\to_{ED} <tt,\sigma>$
- # Link Utili:
	- 
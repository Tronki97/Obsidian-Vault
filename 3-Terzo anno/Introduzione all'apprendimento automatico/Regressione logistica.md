---
tags:
  - TODO
aliases: 
data: "`2025-10-16 14:24`"
---
- # Intro:
	- Ogni neurone in una rete neurale calcola una _regressione logistica_
- # Idea:
	- In [[Naive Bayes]] si cerca di calcolare $P(Y|X)$ dopo aver appreso $P(Y)$ e $P(X|Y)$
	- Ora si cerca di calcolare direttamente $P(Y|X)$
	- Si continua a supporre che le $X$ abbiano [[Distribuzioni notevoli continue#^68d52e|distribuzione normale gaussiana]]
		- $N(\mu_{ik},\sigma_{i})$ quindi la varianza non dipende dalla categoria 
	- $X_{i}$ indipendenti data $Y$
	- $Y$ [[Variabili aleatorie#^a7a7e4|V.A di bernoulli]] 
	- $$P(Y=1|X=\langle x_{1},...,x_{n}\rangle)=\frac{1}{1+exp(w_{0}+\sum\limits_{i} w_{i}*x_{i})}$$
	- Si cercano di stimare i parametri $w_{i}$ e la funzione:
		- $$\sigma(x)=\frac{1}{1+e^{-x}}$$
		- Si chiama _funzione logistica_
		- ![[Pasted image 20251016144832.png]]
- # MLE:
	- $$P(y=1 | x,w)=\sigma(w_{0}+\sum\limits_{i}w_{i}x_{i})$$
	- Si suppone anche l 'indipendenza $\langle x^{l},y^{l}\rangle$ e la loro probabilità è:
		- ![[Pasted image 20251016145705.png|800]]
	- E l'obiettivo è quindi trovare i valori dei parametri $w$ che massimizzano questa probabilità
	- Ovviamente si può passare ai logaritmi e massimizzare:
		- ![[Pasted image 20251016145826.png|800]]
	- 
- # Link Utili:
	- 
---
tags:
aliases:
data: "`2025-10-25 11:09`"
---
- # Discriminativi:
	- Usati principalmente per problemi di _classificazione_ e quindi riconoscere la _decision boundary_ che separa le varie classi
	- Si assume una certa distribuzione per $P(Y|X)$ e se ne stimano i parametri per cercare di capire a quale classe appartengono i dati in input
- # Generativi:
	- Si cerca di apprendere la _distribuzione_ dei dati, usati appunto per generare dei dati 
	- Assumo una distribuzione per $P(X|Y)$ e $P(Y)$ e procedo a stimare i parametri per $P(X|Y)$ e $P(X)$ sul dataset inferisco $P(Y|X)$ usando [[Formula di Bayes|bayes]]
- # Link Utili:
	- 
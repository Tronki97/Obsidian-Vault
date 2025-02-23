---
tags: []
aliases:
  - linguaggio accettato
data: "`2024-10-05 20:17`"
---
- # Def:
	- un [[Automi finiti non deterministici||NFA]]  $N=(\Sigma, Q,\delta, q_{0}, F)$accetta una stringa $w=a_{1}...a_{n}$ sse nel [[Automi a stati finiti#^a25e73||diagramma di transizione]] _esiste_ un cammino da $q_{0}$ ad uno stato $\in F$ nel quale la stringa che si ottiene concatenando le etichette degli archi percorsi è esattamente $w$
	- il linguaggio accettato da $N$ indicato con $L[N]$ è 
		- $$w\in L[N]\iff \exists q\in F: (q_{0},w)\vdash^{*}_{N}(q,\epsilon)$$
	- ## Equivalenza:
		- due _NFA_ si dicono equivalenti sse accettano lo stesso linguaggio ovvero: $L[N_{1}]=L[N_{2}]$ 
- # ES:
	- $L=\{w\in (a\ |\ b)^{*}|\mathbf{w\ contiene \ esattamente \ 3 \ a} \}$
	- e l'_NFA_ corrispondente è:
		- ![[Pasted image 20241005202807.png]]
	- ## N.B: 
		- per un linguaggio L:
			- $$\exists N : L=L[N]\implies \exists N_{1}...N_{\infty}: L=L[N_{i}]\ |\ i=1,2,...$$ 
- # Link Utili:
	- 
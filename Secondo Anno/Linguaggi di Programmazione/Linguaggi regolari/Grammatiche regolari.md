---
tags: []
aliases: 
data: "`2024-10-08 11:10`"
---
- # Def:
	- Una [[Grammatiche#^c95cdc||grammatica libera]] è _regolare_ sse ogni produzione(o [[Grammatiche#^125369||regola]]) è della forma:
		- $$V\to aW \ \ \ \mathbf{oppure}\ \ \  V\to a $$
		- dove: $V,W\in NT$ (simboli non terminali) e $a\in T$ (simboli terminali)
		- per il simbolo inziale $S$ è ammessa anche la regola $S\to \epsilon$
- # ES: 
	- ## 1:
		- ![[Pasted image 20241008185748.png]]
		- l'[[Automi finiti non deterministici||NFA]] associato a $G$ è:
			- ![[Pasted image 20241008185820.png]]
			- ad ogni $NT$ è associato un solo stato dell'NFA
			- è stato aggiunto uno stato finale $\epsilon$ 
	- ## 2:
		- ![[Pasted image 20241008190017.png]]
- # Teorema:
	- data una grammatica regolare $G$ si può costruire un NFA $N_{G}$ equivalente.
	- ## Dim:
		- Sia $G=(NT,T,R,S)$ allora $N_{G}=(T,Q,\delta, S, \{\epsilon\})$ è definito come segue:
			- $Q=NT\cup\{\epsilon\}$ 
			- $\delta$:
				- $V\to aZ\in R \implies Z\in \delta(V,a)$
				- $V\to a\in R \implies \epsilon\in \delta(V,a)$
				- $S\to \epsilon\in R \implies \epsilon\in \delta(S,\epsilon)$ 
- # Link Utili:
	- https://virtuale.unibo.it/pluginfile.php/2199261/mod_resource/content/0/Lez07-Gorrieri.pdf dalla pagina 5 in poi 
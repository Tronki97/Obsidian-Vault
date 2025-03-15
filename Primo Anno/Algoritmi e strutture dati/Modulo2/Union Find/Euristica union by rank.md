---
tags: []
aliases: 
data: "`2024-08-31 20:05`"
---
- ## Funzionamento:
	- rendere la radice dell'albero più basso figlia della radice dell'albero più alto
		- ogni radice mantiene informazioni sul proprio rango
			- il rango `rank(x)` di un nodo __x__ è il numero di archi del cammino più lungo fra __x__ e una foglia discendente 
			- rango $\equiv$ altezza del sotto-albero radicato sul nodo 
		- ### Proprietà:
			- un albero QuickUnion con euristica sul rango con __x__ come radice ha $n\geq 2^{rank(x)}$ nodi 
		- usando questa euristica `find()` ha costo $O(log \ n)$ nel caso pessimo
			- #### Dim:
				- `find()` ha costo $O(h)$ dove $h$ è l'altezza dell'albero
				- l'altezza di un albero QuickUnion A è `rank(A)`
				- dalle proprietà so che: $2^{\mathbf{rank(A)}}\le n$ 
				- quindi $h=\mathbf{rank(A)}\le \log(n)$  

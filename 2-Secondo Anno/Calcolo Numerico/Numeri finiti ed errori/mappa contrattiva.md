---
tags: []
aliases: 
data: "`2024-09-24 10:02`"
---
- # Def:
	- una mappatura $g: D\to D$ è chiamata contrattiva se $\exists C: |g(x)-g(y)|\leq C|x-y|$
		- $C$ viene chiamata costante contrattiva
	- la costante C è legata alla velocità con cui l'approssimazione si avvicina alla soluzione.
	- Errore assoluto: 
		- $E_{k}$ errore al passo $k$ 
		- ## prop:
			-  $|E_{k+1}|\leq C|E_{k}|$ o $\frac{|E_{k+1}|}{|E_{k}|}\leq C$ e quindi $$|E_{k}|\leq C^{k}|x_{0}-p|$$
		- ## dimostrazione:
			-  $$|E_{k+1}| = |g(x_{k})-g(p)|\leq C|x_{k}-p|=C|E_{k}|$$
			- e ciò quindi porta a: $$|E_{k}|\le C|E_{k-1}|\le C*C|E_{k-2}|=$$
			- $$= C^{2}|E_{k-2}|$$
			- ripetuto $k-2$ volte ciò porta a: $$|E_{k}|\leq C^{k}|E_{k-k}|=C^{k}|x_{k-k} -p| = $$
			- $$=C^{k}|x_{0}-p|$$ 
- 
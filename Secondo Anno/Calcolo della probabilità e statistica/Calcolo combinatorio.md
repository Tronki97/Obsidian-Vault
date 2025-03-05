---
tags:
  - TODO
aliases: 
data: "`2025-03-04 13:37`"
---
- # ES (da mettere in un altro file):
	- $$\Omega=\{ (n_{1},n_{2},n_{3},n_{4},n_{5}): n_{i}\in \{1,...,90\}\}$$
		- $n_{i}$ sono distinti $i=1,...,5$
	- $E_{ij}=$ “estraggo il numero j alla i-esima estrazione” $i=1,...5$   $j=1,...,90$
	- $$\mathbb{P}(E_{1, n_{1}} \cap E_{2, n_{2}} \cap E_{3, n_{3}}\cap E_{4, n_{4}}\cap E_{5, n_{5}})=$$
	- $$=\mathbb{P}(E_{1},n_{1})*\mathbb{P}(E_{2},n_{2}|E_{1},n_{1})*\mathbb{P}(E_{3},n_{3}|E_{1},n_{1}\cap E_{2},n_{2})*...*\mathbb{P}(E_{5},n_{5}|E_{1},n_{1}\cap E_{2},n_{2}\cap E_{3},n_{3}\cap E_{4},n_{4})$$
	- $$=\frac{1}{90}* \frac{1}{89}* \frac{1}{88}* \frac{1}{87}* \frac{1}{86}=\frac{1}{|\Omega|}$$
	- 
- # Link Utili:
	- 
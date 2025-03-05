---
tags:
  - TODO
aliases: 
data: "`2025-03-04 14:38`"
---
- # ES:
	- Possibile composizione dell’urna: $RR$; $RB$; $BB$ 
	- Suppongo che le tre combinazioni ($H_{0},H_{1},H_{2}$) abbiano la stessa probabilità: $\frac{1}{3}$
		- $H_{0}=RR$
		- $H_{1}=RB$
		- $H_{2}=BB$
		- $B_{i}$ estraggo una pallina bianca alla i-esima estrazione
		- $B_{i}^{C}$ estraggo una rossa alla i-esima estrazione.
	- La probabilità che si estragga una pallina bianca:
		- $$\mathbb{P}(B)=\frac{1}{3}* \frac{1}{2}+\frac{1}{3}*1=\frac{1}{6}+\frac{1}{3}=\frac{1}{2}$$
	- 2) calcolare la probabilità di pescare 3 palline bianche di fila:
		- $$\mathbb{P}(B_{3}|B_{2}\cap B_{1})=\frac{\mathbb{P}(B_{1}\cap B_{2}\cap B_{3})}{\mathbb{P}(B_{1}\cap B_{2})}$$
		- Uso la [[Formula delle probabilità totali]]:
			- $$\mathbb{P}(B_{1}\cap B_{2}\cap B_{3})=\mathbb{P}(H_{1}\cap B_{1}\cap B_{2}\cap B_{3})+\mathbb{P}(H_{2}\cap B_{1}\cap B_{2}\cap B_{3})=$$
				- Le partizioni di $\Omega$ sono: $(H_{0},H_{1},H_{2})$
			- $$=\frac{1}{3}*1*1*1+ \frac{1}{3}* \frac{1}{2}* \frac{1}{2}* \frac{1}{2}=\frac{3}{8}$$
			- $$\mathbb{P}(B_{1}\cap B_{2})=\mathbb{P}(H_{1}\cap B_{1}\cap B_{2})+\mathbb{P}(H_{2}\cap B_{1}\cap B_{2})=$$
			- $$=\frac{1}{3}*1*1+ \frac{1}{3}* \frac{1}{2}* \frac{1}{2} =\frac{5}{12}$$
			- Infine $$\mathbb{P}(B_{3}|B_{2}\cap B_{1})=\frac{3}{8}* \frac{12}{5}=\frac{9}{10}$$
		- 
	- 
- # Link Utili:
	- 
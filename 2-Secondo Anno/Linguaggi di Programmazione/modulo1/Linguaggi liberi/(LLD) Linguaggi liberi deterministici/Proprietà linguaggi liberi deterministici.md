---
tags:
  - linguaggi
aliases: 
data: "`2024-10-29 18:07`"
---
- # Proprietà:
	- ## Chiusi per Complementazione:
		- $$\exists N : L=L[N]\implies \exists N' : \overline{L}=L[N']\ |\ \overline{L}= \Sigma^{*}-L $$
		- $N=$ [[PDA deterministico|DPDA]]
	- ## Non sono chiusi per Intersezione:
		- $$L_{1}=\{a^{n}b^{n}c^{m}|n,m\ge 0\}$$
		- $$L_{2}=\{a^{m}b^{n}c^{n}|n,m\ge 0\}$$
			- sono entrambi liberi
		- $$L_{1}\cap L_{2}=\{a^{n}b^{n}c^{n}|n\ge0\}$$
			- _non è libero _
	- ## Non sono chiusi per Unione:
		- Ponendo per assurdo che lo fossero:
		- $L_{1} \cap L_{2}$ usando _De Morgan_  si ottiene: 
			- $$\overline{\overline{L_{1}}\cup \overline{L_{2}}}$$
		- risultando quindi _chiusi per intersezione_ il che è un **assurdo**.
- # Link Utili:
	- 
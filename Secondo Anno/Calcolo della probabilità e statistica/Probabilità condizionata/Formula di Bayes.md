---
tags: []
aliases: 
data: "`2025-03-04 14:21`"
---
- # Formula:
	- Quando devo calcolare una [[Probabilità condizionata]] di eventi _nell’ordine temporale sbagliato_
	- $\mathbb{P}(B|A)$ come lo ottengo da $\mathbb{P}(A|B)$?
	- $$\mathbb{P}(B|A)=\frac{\mathbb{P}(B\cap A)}{\mathbb{P}(A)}$$ 
	- $$\mathbb{P}(A|B)=\frac{\mathbb{P}(B\cap A)}{\mathbb{P}(B)}$$
		- Dalla [[Probabilità condizionata#^2857d0|regola della catena]] $\mathbb{P}(A\cap B)=\mathbb{P}(A|B)\mathbb{P}(B)$
	- Quindi $$\mathbb{P}(B|A)=\frac{\mathbb{P}(A|B)\mathbb{P}(B)}{\mathbb{P}(A)}$$
- # ES:
	- CI sono due urne: la prima urna contiene _una pallina bianca_ e _due palline Rosse_, mentre la seconda contiene _due palline bianche e cinque palline rosse_. Si lancia una Moneta: se esce _testa si estrae una pallina dalla prima urna_, se esce _croce si estrae una Pallina dalla seconda_.
	- $T$ = esce testa 
	- $B$ = estratta una pallina bianca
	- Devo calcolare quindi $\mathbb{P}(T|B)$ :
		- $\mathbb{P}(B)$ è data dalla [[Formula delle probabilità totali]] 
			- ![[Pasted image 20250324165436.png]]
			- $$\mathbb{P}(B)=\mathbb{P}(B\cap T)+\mathbb{P}(B\cap T^{C})$$
		- $$ \mathbb{P}(T|B)= \frac{\mathbb{P}(B|T)\mathbb{P}(T)}{\mathbb{P}(A)}=\frac{\mathbb{P}(B\cap T)}{\mathbb{P}(B\cap T)+\mathbb{P}(B\cap T^{C})}=\frac{1}{2}* \frac{1}{3}: \left( \frac{1}{3}* \frac{1}{2}+\frac{2}{7}* \frac{1}{2} \right)=\frac{7}{13}$$
		- 
- # Link Utili:
	- 
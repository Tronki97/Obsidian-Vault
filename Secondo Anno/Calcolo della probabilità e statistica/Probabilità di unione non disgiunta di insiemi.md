---
tags: []
aliases: 
data: "`2025-03-02 19:16`"
---
- # Probabilità di unione non disgiunta di insiemi:
	- siano $A,B$ eventi
	- $$\mathbb{P}(A\cup B)=\mathbb{P}(A)+\mathbb{P}(B)-\mathbb{P}(A\cap B)$$
	- ![[Pasted image 20250227193741.png]]
	- Si toglie l’intersezione degli insiemi perché altrimenti si conterebbe 2 volte la probabilità degli eventi in comune.
	- ## Dim:
		- Per l’additività
			- $$\mathbb{P}(A\cup B)= \mathbb{P}(A \textbackslash B) + \mathbb{P}(B \textbackslash A)+ \mathbb{P}(A\cap B)=$$
			- Riscrivibile in 
		- $$=\pm 2\mathbb{P}(A\cap B)+\mathbb{P}(A\cap B)$$
			- e poiché: $(A \textbackslash B) \cup (A\cap B)=A$ e $(B \textbackslash A) \cup (A\cap B)=B$
		- $$\mathbb{P}(A)+\mathbb{P}(B)- 2\mathbb{P}(A\cap B)+ \mathbb{P}(A\cap B)=$$
		- $$=\mathbb{P}(A)+\mathbb{P}(B)-\mathbb{P}(A\cap B)$$
	- ## OSS:
		- Quando si ha più di 2 eventi 
		- $n=3$
		- $$\mathbb{P}(A\cup B\cup C)=\mathbb{P}(A)+\mathbb{P}(B)+\mathbb{P}(C)-\mathbb{P}(A\cap B)-\mathbb{P}(B\cap C)-\mathbb{P}(A\cap C)+\mathbb{P}(A\cap B\cap C)$$
- # Link Utili:
	- 
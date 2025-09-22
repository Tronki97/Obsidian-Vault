---
tags: 
aliases:
  - parallelismo
date: 2024-10-02
---
- # nondeterminismo e parallelismo: ^b48c19
	- $$c::=skip\ |\ v:=e \ |\ ...\ |\ c\ or\ c \ |\ c\ par\ c$$
	- ![[Pasted image 20241002220320.png]]
	- ![[Pasted image 20241002220332.png]]
	- per verificare che $\to_{c}$ non è più deterministica su questo linguaggio esteso costruisco il [[Semantica operazionale strutturata#^9bf154||sistema di transizione]] su di un esempio:
		- $$(x:=0;\ x:=x+1)\ par \ x:=1$$
			- ![[Pasted image 20241002220527.png]]
			- i risultati finali sono 2: $\{\frac{x}{2}\}$ o $\left\{ \frac{x}{1} \right\}$ avendo quindi 2 risultati distinti si conclude che $\to_{c}$ non è deterministica in questo linguaggio.
- # Link Utili:
	- 
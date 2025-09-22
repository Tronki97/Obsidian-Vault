---
tags: 
aliases:
  - comandi
  - store
date: 2024-10-02
---
- # Semantica dei comandi:
	- $$c::=skip\ |\ v:=e \ |\ c;c\ |\ if\ b\ then\ c\ else \ c$$
	- $<\Gamma_{c}, T_{c}, \to_{c}>$ dove $\Gamma_{c}=\{<c, \sigma>\ |\ c\in Com,\ \sigma \in Store\}\cup {\sigma\ |\ \sigma \in Store}$ 
	  $T_{c}=\{\sigma\ |\ \sigma \in Store\}$ = Store
	  $e \to_{c} \subseteq \Gamma_{c} \times \Gamma_{c}$ è la minima relazione generata dai seguenti assiomi:
		- ![[Pasted image 20241002214817.png]]
		  ![[Pasted image 20241002214830.png]] 
	- ### ES:
		- ![[Pasted image 20241002215122.png]]
- # Link Utili:
	- 
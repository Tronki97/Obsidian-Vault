---
tags:
aliases:
  - grammatica libera
  - grammatiche libere
data: "`2026-07-30 12:35`"
---
- # Def:
	- una _grammatica Libera (da contesto)_: ^c95cdc
		- è una _quadrupla_$(NT, T, R, S)$ 
			- $NT$ _non terminali_ (di solito maiuscole)
			- $T$ _terminali_ (minuscole)
			- $S \in NT$ _simbolo iniziale_
			- $R$ insieme finito di _regole_ o _produzioni_ 
				- $v\to w$ dove $V\in NT$ e $w\in (T\cup NT)^{*}$
	- ## ES:
		- $G=(\{ S\}, \{a,b,+,*\},S,R )$
		- $R=\{S\to_{1}a_{1}; S\to_{2} b; S\to_{3}S+S; S\to_{4}S*S\}$ 
- # Link Utili:
	- 
---
aliases:
  - parser
  - Parser
tags:
  - LdP
---

- ## Parser: ^381037
	- a partire dalla lista dei token generati dallo [[Analisi lessicale||scanner]] il _parser_ produce l'[[Alberi di derivazione||albero di derivazione]] del programma, riconoscendo se le frasi hanno senso nel modo in cui sono scritte.
		- ### ES:
			- controllo del bilanciamento delle parentesi: $(a(+b)))$ 
				- le parentesi sono sbilanciate e il $+$ non è posizionato in modo sensato però tutti i simboli sono ammessi. 
			- controllo della composizione dei comandi in modo che rispettino le regole grammaticali:
				- `if x==5 then then x=3` _errore_ perché ci sono 2 `then` 
	- ### Realizzarlo:
		- necessita di: 
			- [[Grammatica|grammatiche libere]]
			- [[PDA deterministico|DPDA]] 
		
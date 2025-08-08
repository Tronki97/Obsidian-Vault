---
aliases:
  - parser
  - Parser
---

- ## Parser: ^381037
	- a partire dalla lista dei token generati dallo [[Analisi lessicale||scanner]] il parser produce l'[[Alberi di derivazione||albero di derivazione]] del programma, riconoscendo se le frasi hanno senso nel modo in cui sono scritte.
		- ### ES:
			- $(a(+b)))$ 
				- le parentesi sono sbilanciate e il $+$ non è posizionato in modo sensato però tutti i simboli sono ammessi.
	- ### Realizzarlo:
		- necessita di [[Grammatiche#^c95cdc||grammatiche libere da contesto]] e automi a pila 
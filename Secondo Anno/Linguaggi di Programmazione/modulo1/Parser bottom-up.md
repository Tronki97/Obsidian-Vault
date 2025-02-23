---
tags:
  - TODO
aliases: 
data: "`2024-11-19 11:09`"
---
- # shift-reduce:
	- ## shift:
	- ## Reduce:
		- fa il contrario di un [[Parser Top-down]] 
		- rimuove una stringa $\alpha^{R}$ dalla pila e la sostituisce con $A$ 
	- riconosce la stringa per [[Automi a Pila (PDA)#^a594b1|pila vuota]]
- # Parser LR:
	- L: input letto da sinistra a destra 
	- R: genera una derivazione rightmost.
- # nondeterministico:
	- ## Input:
		- [[Grammatiche#^c95cdc|grammatiche libere]] 
	- ## Output:
		- ogni volata che faccio “reduce” fornisco in output la produzione usata.
	- quindi in pratica il parser parte dall’input e costruisce sulla pila la sequenza di produzioni necessarie per produrre quell’input e se ci riesce accetta la stringa data. 
	- ## ES:
		- ![[Pasted image 20241119112217.png]]![[Pasted image 20241119112233.png]] 
		- e l’albero di derivazione generato è appunto costruita bottom-up e rightmost:
			- ![[Pasted image 20241119112348.png]]
		- 
- # Link Utili:
	- 
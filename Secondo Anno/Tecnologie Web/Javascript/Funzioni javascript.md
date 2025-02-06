---
tags: []
aliases:
  - arrow function
  - funzione filtro
data: "`2025-02-06 16:06`"
---
- # Funzioni filtro su [[Array]]:
	- ![[Pasted image 20250206160752.png|800]]
		- in questo modo vengono selezionati solo quelli con il valore `sales>100000` e assegno a loro un nuovo campo `best: true`
			- ![[Pasted image 20250206161027.png]]
	- `array.sort(f)`:
		- restituisce un array ordinato sulla base della funzione f, che deve avere due parametri e restituire un valore 1 (stesso ordine) o -1 (inverti l'ordine).
	- `array.filter(f)`:
		- restituisce un secondo array che contiene solo gli elementi che soddisfano la funzione booleana f.
	- `array.some(f), array.every(f)`:
		- restituisce vero se almeno un elemento (some()) o tutti gli elementi (every()) soddisfano la funzione booleana f.
	- `array.find(f)`:
		- restituisce il primo elemento che soddisfa la funzione booleana f
	- `array.forEach(f)`:
		- esegue sull'array la funzione f permettendo di modificare l'array direttamente.
	-  `array.map(f)`: 
		- crea un nuovo array in cui ogni elemento viene modificato dalla funzione f
	-  `array.reduce(f)`: 
		- esegue su ogni elemento dell'array la funzione f passando il risultato dell'esecuzione precedente. _Ottimo per fare totali_.
- # Funzioni freccia (arrow function):
	- ![[Pasted image 20250206161446.png]]
	- utile per definire semplici funzioni di _callback_
- # Link Utili:
	- 
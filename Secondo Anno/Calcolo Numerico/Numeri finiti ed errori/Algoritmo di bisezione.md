---
tags: []
aliases: 
data: "`2024-09-24 10:01`"
---
- # Argomento:
	- Calcolo della radice di un'equazione(non lineare):
		- forma generica: $F(x)=0$
		- 1) prima devo accertarmi che la soluzione esista 
			- si usa Weirstrass (Scrivi il teorema in [[Teoremi]] Coglione) 
		- 2) calcolo la soluzione con un algoritmo.
			- _Bisezione_: 
				- Es: risolvere $f(x)=0 | f(x)=x-cos(x)$ nell'intervallo $[-1,1]$
					- si basa sullo zoomare sulla funzione dimezzando ogni volta l'intervallo da guardare tipo un binary search sempre basato sui segni di valori estremi della funzione.
				- ![[Pasted image 20250102165919.png||600]]
				- si segna l’asse dove si trova il punto da cercare e quindi seguendo gli assi capisco che il valore si trova tra 0.5 e 0.75.
				- ora si esegue il tutto con intervallo che ha come estremi i due valori trovati precedentemente.
				-  ![[Pasted image 20250102171533.png||600]]
				- si continua fino a che non si raggiunge una precisione accettabile. determinata da un _errore massimo_ $E_{max}$. 
			- ## Codice:
```python
	while E_max > E_tol:
	        c = (left + right)/2
	        x_sol.append(c)
	        if f(left)*f(c) < 0: #se l'obiettivo è minore dell'estremo destro
		        right= c
	        else:
		        left = c
        E_max = abs(c-x)
        Errors.append(E_max)
        it+=1 #per tracciare il numero di iterazioni
```

- # Link utili:
	- 
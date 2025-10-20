---
tags:
  - TODO
aliases: 
data: "`2025-10-17 13:29`"
---
- # scikit-learn:
	- Apprendimento supervisionato
		- Si fa imparare all'algoritmo lo svolgimento di un problema
		- Regressione:
			- Si devono prevedere valori numerici continui
		- Classificazione:
			- Si prevedono valori categorici quindi dire se una figura è un triangolo o altro.
	- ## Regressione:
		- Trovare la funzione che meglio approssima la relazione tra variabile x e y
			- $$f(x)=xw+b$$
		- ### ES:
			- Predirre il valore di una casa tramite un dataset e la libreria `pandas`
			- Tra tutte le features che ci sono si cerca di prevedere _MEDV_
			- Per normalizzare i dati si possono usare diverse funzioni:
				- `MinMaxScale` si riportano le feature in un range $[0,1]$
				- `MaxAbsScale` riposrta i valori in $[-1,1]$ utile se i valori devono concentrarsi sullo 0
			- Standardizzazione:
				- Utile per algoritmi con distribuzioni gaussiane
			- Dopo aver predetto i risultati si calcolano gli errori come la media _quadratica degli errori_, 
- # Link Utili:
	- 
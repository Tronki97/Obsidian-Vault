---
tags:
aliases:
  - batch
  - mini-batch
  - online mini-batch
data: "`2025-10-24 18:06`"
---
- # Gradiente:
	- è un approccio iterativo al problema affrontato nella [[Regressione logistica]] il cui obiettivo consiste nel minimizzare una qualche funzione di errore $\Theta(w)$ consiste nell'eseguire dei _piccoli passi iterativamente_ nella direzione opposta al Gradiente partendo da un punto qualunque _calcolando la mia loss_
		- Il passo che devo fare è uguale a $\mu$ ovvero il _learning rate_
	- _Gradiente_: vettore delle derivate parziali, dove le derivate sono sui pesi $w_{i}$
	- Questa tecnica è calcolabile su tutte le funzioni basta che siano _derivabili in tutte le direzioni_
	- Non porta sempre al _minimo globale_:
		-  _se la loss function è convessa allora c'è solo un minimo_
	- Nel nostro caso la funzione è una [[Regressione logistica#^57cf6b|funzione logistica]] la cui derivata è una gaussiana.
	- Un problema che si può riscontrare è nel caso dei _plateau_ ovvero delle ampie zone piatte con gradiente 0.
- # Batch:
	- Spesso invece di calcolare l'errore e il suo gradiente su tutti i miei dati (_full batch_) e quindi essendo lento lo si calcola su un sottoinsieme di dati detto _mini-batch_
	- Un altro metodo è quello di calcolarlo su un'istanza del training set alla volta.
		- Ciò risulta veloce ma poco preciso
	- Una combinazione dei precedenti viene usata dal _SGD_(stochastic gradient descent) che usa un _mini-batch_ che cambia ad ogni iterazione.
- # Link Utili:
	- 
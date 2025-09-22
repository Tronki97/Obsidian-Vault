
## Sintassi:
- formule : denotano dei valori di verità
- termini : (rappresentazioni grafiche che)denotano elementi del dominio del discorso
	- t : := x| c |$f^{n}(t_{1},...t_n)$ la funzione ($f^{n}$) vuole n termini in input e danno in output un termine. 
- proposizioni: 
	- i connettivi prendono dei termini e restituiscono un predicato
	- predicati: prendono n termini in input e restituiscono vero o falso 
		- es: > è un predicato ma non una proposizione
		- mentre x>4 è una preposizione.
	- quantificatori: mi dicono quanti rendono vera o falsa una proposizione
		- universale (∀) 
		- esistenziale (∃)

## Semantica
un mondo/interpretazione fissa un insieme non vuoto A e:
- a ogni simbolo di costante c assegna un elemento di A  ($[c]^{v}\in A$) es: $[\pi]^v=2$ 
- a ogni simbolo di funzione n-aria $f^n$ associa una funzione n-aria su 
- scope: zona all'interno del quale la variabile viene legata
- Binder: lega una variabile ad uno scope (i quantificatori lo sono: $\forall , \exists$) es:
	- matematica: 
		- $$\int_{x+2}^{x^{2+3}} x^{2+4} dx$$Il binder è l'integrale e lo scope è $x^2+4$; dx è la variabile legata.
	- programmazione: i parametri formali delle [[Funzioni  e Dichiarazioni]]:
		- tutte le dichiarazioni di variabili o funzioni sono dei binder   
	- logica: 

Diagrammi di legame: 
- collegare ogni variabile legata col binder che lega per mezzo di freccia
- le variabili libere(non legate): indicarle con freccia che punta all'infinito su cui scrivere il nome della variabile 

$\alpha$-Convertibilità:
- se si cambia il nome delle variabili all'interno delle funzioni ma la semantica della funzione rimane uguale allora queste formule vengono definite $\alpha$-convertibili

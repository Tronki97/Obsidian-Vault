//salto all'indirizzo contenuto nella RAM il cui indirizzo è in AX se l'ultimo operazione ha dato come risultato 0.
		298 000101000110100 0011101101
	           --------------- ++++++++++
	           JZ               [AX]
	   
copiamo il valore 298 dal PC al MAR(tutto viene comandato dalla CU). 
-  La CU invia ai MUX dei segnali per far passare certi dati o istruzioni. 
-  La CU accende il segnale leggi della RAM; la memoria mette sulle sue uscite il valore della cella 234 che è (quella di sopra); il valore viaggia fino all'MDR sul bus dati e viene copiato dal MDR nell'IR(la CU comanda tutto tramite i MUX, inviando segnali ai registri e all'ALU). 
- Analizzata l'istruzione la CU va a vedere il valore del bit di zero della PSW; se non ha dato 0 incremento PC altrimenti prende il valore AX e la copia in MAR accende la linea leggi la memoria invia sulle uscite il valore all'indirizzo puntato da AX, il valore poi arriva all'MDR e si copia il valore sul PC.
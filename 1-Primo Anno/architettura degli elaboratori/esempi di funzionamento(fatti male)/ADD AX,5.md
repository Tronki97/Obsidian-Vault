RAM
234 000101000110100   0011101 101
       -------------------- ++++++  ---
		MOV                        AX           5
PC=234
copiamo il valore 234 dal PC al MAR(tutto viene comandato dalla CU). 
-  La CU invia ai MUX dei segnali per far passare certi dati o istruzioni. 
-  La CU accende il segnale leggi della RAM; la memoria mette sulle sue uscite il valore della cella 234 che è (quella di sopra); il valore viaggia fino all'MDR sul bus dati e viene copiato dal MDR nell'IR(la CU comanda tutto tramite i MUX, inviando segnali ai registri e all'ALU).
- soltanto la ALU è in grado di effettuare somma quindi tutti i procedimenti col + vengono fatti
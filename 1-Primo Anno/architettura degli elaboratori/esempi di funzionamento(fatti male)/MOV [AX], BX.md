//RAM[AX]=BX, copia il valore di BX nella cella di RAM indirizzata da AX
		1232 000101000110100 001110 1101
	             -------------------- +++++ ----
	             JZ                             [AX]     BX
	    PC=1232
	    AX=23
	    BX=52
	    copiamo il valore 1232 dal PC al MAR(tutto viene comandato dalla CU). 
-  La CU invia ai MUX dei segnali per far passare certi dati o istruzioni. 
-  La CU accende il segnale leggi della RAM; la memoria mette sulle sue uscite il valore della cella 234 che è (quella di sopra); il valore viaggia fino all'MDR sul bus dati e viene copiato dal MDR nell'IR(la CU comanda tutto tramite i MUX, inviando segnali ai registri e all'ALU). 
- Prendo il valore di AX e lo metto su MAR; prendo il valore di BX e lo metto su MDR; accendo la linea scrivi, la memoria scrive 52 sulla cella 23; incremento PC.
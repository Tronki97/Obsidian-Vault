MOV AX, 5:
RAM
234 000101000110100   0011101  101
	   --------------------  ++++++  ---
	               MOV               AX          5
PC=234
copiamo il valore 234 dal PC al MAR(tutto viene comandato dalla CU). 
		 
		 
   - La CU invia ai MUX dei segnali per far passare certi dati o istruzioni. 
   - La CU accende il segnale leggi della RAM; la memoria mette sulle sue uscite il valore della cella 234 che è (quella di sopra); il valore viaggia fino all'MDR sul bus dati e viene copiato dal MDR nell'IR(la CU comanda tutto tramite i MUX, inviando segnali ai registri e all'ALU).
  - la CU analizza l'istruzione, dice di copiare il 5 su AX e mettere 0 sul resto
  - (+) la CU analizza l'istruzione, dice di mandare 5 all'ingresso della ALU e mettere 0 per completare 
  - (+) la CU dice di mandare 0 all'altro ingresso della ALU
  - (+) la CU dice alla ALU di fare la somma 
  - (+) la CU dice di mandare l'uscita della ALU ad AX. 
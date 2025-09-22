---
tags:
aliases:
  - fetch-decode-execute
  - ciclo fde
data: "`2024-09-17 14:25`"
---
- è il componente che interpreta le istruzioni ed è costituito da:
	- Operazioni per *l'elaborazione dei dati primitivi*
	- Operazioni e strutture dati per il *controllo della sequenza* di esecuzione delle operazioni
	- Operazioni e strutture dati per il _controllo del trasferimento_ dei dati 
	- Operazioni e strutture dati per la _gestione della memoria_
- La struttura dell'interprete è uguale per ogni [[MA (macchina astratta)||MA]] cambiano i diversi componenti.
- L'interprete ha il compito di eseguire il ciclo _Fetch-Decode-Execute_:
	- _Fetch_: Caricare in memoria le istruzioni del programma.
	- _decode_: decodificare e identificare il tipo di istruzioni da eseguire.
	- _execute_: eseguire le istruzioni ricevute.
- ## Definizione formale di interprete per un linguaggio: ^68f4bc
	- Un interprete per il linguaggio $L$, scritto nel linguaggio $Lo$, è un programma che realizza una [[Implementare un linguaggio#^7219a0||funzione parziale]] 
		- $$(I_{L}^{Lo}:(Prog^{L}\times D)\to D) : I_{L}^{Lo}(P_{r}^{L}, Input)=P^{L}(Input)$$ 
- ## In sostanza:
	- 
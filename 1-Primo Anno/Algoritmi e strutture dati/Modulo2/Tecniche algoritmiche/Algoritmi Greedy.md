---
tags: 
aliases:
  - problema del resto
  - problema shortest-job first
  - problema della compressione
  - huffman
data: "`2024-08-31 20:05`"
---
- ## Introduzione:
	- ### Quando applicare:
		- fra le molte scelte possibili, si può trovarne facilmente una che porti alla soluzione ottima.
		- quando il problema ha sotto-struttura ottima
	- ### Esempi: 
		- #### Problema del resto:
			- _input_: intero positivo R che rappresenta importo da erogare.
			- _output_: minimo numero intero di monete necessarie per dare il resto di R centesimi di euro, usando solo monete centesimi.
			- _Es_: R=78,  5 pezzi: 50+20+5+2+1
			- ##### implementazione:
				- ![[Pasted image 20240816075952.png]]
				- ###### Osservazione:
					- i sistemi monetari per cui funziona l'algoritmo sono _quelli canonici_
					- l'algoritmo infatti può fallire con sistemi del tipo:
						- erogare 6 con tagli 4,3,2(greedy farà: 4+1+1, ottimo: 3+3).
		- #### problema del shortest-job first:
			- ##### def:
				- 1 esecutore, n job $p_{1}, p_{n}, \dots, p_{n}$ 
				- ogni job $p_{i}$ ha un tempo di esecuzione $t[i]$
				- _minimizzare_ il tempo medio di attesa.
				- il principio è che venga eseguita per prima la task che impiega di meno a completarsi per così ridurre il tempo medio di attesa.
					- Una soluzione sarebbe quella di ordinare l'array contenente le task in maniera crescente.
					  
				- l'algoritmo esegue $n$ passi.
			- ###### Dimostrazione di ottimalità:
				- considerando un ordinamento in cui un _job_ "lungo" A viene messo prima di uno "corto" B
				- x, y, z sono sequenze di altri job
				- ![[Pasted image 20240816081508.png]]
				- _osservo che_:
					- Il tempo di attesa dei job in x e z non cambia.
					- Il tempo di attesa di B nella seconda soluzione è uguale al tempo di attesa di A nella prima 
					- Il tempo di attesa di A nella seconda soluzione è _strettamente minore_ al tempo di attesa di B nella prima
					- Di conseguenza il tempo di attesa di y _si riduce_
	- #### Problema della compressione:
		- rappresentare sequenze di caratteri, secondo una certa codifica(ovvero una funzione matematica; $f(c)=x$). dove "c" è il carattere e "x" è la sua rappresentazione binaria.
		- ##### Problema: 
			- data la sequnenze $c_1...c_{n}$ definire una funzione di codifica $f$ che minimizza la lunghezza della codifica $f(c_1)...f(c_{n})$ 
		- ##### Codici a lunghezza fissa:
			- suppongo di avere un file di $n$ caratteri
				- possibili car.: 'a', 'b',    'c',     'd'   'e',   'f'
				- frequenze: 45%, 13%, 12%, 16%, 9%, 5%. 
			- _Codifica tramite ASCII_ (8 bit per carattere)
				- dimensione totale $8n$ bit.
			- _Codifica basata sull'alfabeto_( 3 bit per carattere)
				- codifica: 000   001   010   011   100   101
				- Dimensione totale: $3n$ bit
			- __N.B: si può fare di meglio__ 
		- ##### Codici di lunghezza variabile 
			- caratteri: 'a',   'b',     'c',     'e',     'f'
			- codifica:  0,   101,   100,   111,   1101,   1100
			- costo totale: $$(0.45*1+0.13*3+0.12*3+0.16*3+$$$$+0.09*4+0.05*4)*n=2.24n$$
			- Codice "a prefisso" (senza prefissi):
				- nessun codice è un prefisso di un altro codice 
				- il che è una condizione richiesta per permettere la decodifica durante la lettura bit-dopo-bit.
					- ($f(a)$=1,  $f(b)=10$,  $f(c)=101$ per decodificare 101 lo indico come "c" o "ba")
			- esempio: addaabca
				- $0 \cdot 111 \cdot 111 \cdot 0 \cdot 0\cdot 101\cdot 100\cdot {0}$ 
			- #### Rappresentazione ad [[Alberi e Alberi binari||albero]]
				- ##### Rappresentazione del codice come un albero binario:
					- figlio sx: 0; figlio dx:1
					- caratteri dell'alfabeto sulle foglie
						- ![[Pasted image 20240816150739.png]] 
				- ##### Rappresentazione ad albero per la decodifica 
					- ![[Pasted image 20240816150933.png]]
	- ### Algoritmo di Huffman
		- #### Principio: 
			- Minimizzare la lunghezza dei caratteri che compaiono più frequentemente
			- Assegnare ai carattere con la frequenza minore i codici corrispondenti ai percorsi più lunghi all'interno dell'albero
		- #### Un codice è progettato per un file specifico
			- Si ottiene la frequenza di tutti i caratteri
			- Si costruisce il codice
			- Si rappresenta il file tramite codice 
			- (Si aggiunge al file una rappresentazione del codice per permettere la codifica)
		- #### Costruzione del codice
			- ##### Passo 1: 
				- Costruire una lista ordinata di nodi, in cui ogni nodo contiene un carattere e il numero di volte in cui quel carattere compare nel file:
					- $'f':5\ \ \  'e':9\ \ \  'c':12\ \ \  'b':13\ \ \  'd':16\ \ \  'a':45$
			- ##### Passo 2:
				- rimuovere i due nodi con frequenze minori
			- ##### Passo 3:
				- Collegarli ad un nodo padre etichettato con la frequenza combinata (sommata)
					- ![[Pasted image 20240816151911.png]]
			- ##### Passo 4:
				- Aggiungere il nodo combinato alla lista, mantenendola ordinata in base alle frequenze:
					- ![[Pasted image 20240816152009.png]]
			- ##### Ripetere:
				- _i passi 2-4_ fino a quando non resta un solo nodo nella lista ed al termine si _etichettano gli archi dell'albero con 0/1_
					- ![[Pasted image 20240816152230.png]]
			- #### Implementazione:
```java
	Tree Huffman(float f[n], char c[n])
		Queue Q= new MinPriorityQueue();
		int i;
			for(int i=0; i<n; i++)
				TN z=new TreeNode(f[i], c[i]);
				Q.insert(f[i], z);
			for(int i=0; i<n-1;i++)
	(queuenode)QN z1=Q.findmin;
			   Q.deletemin;
	(queuenode)QN z2=Q.findmin;
			   Q.deletemin;
			   TN z=new TreeNode(z1.f+z2.f,'');
			   z.left=z1;
			   z.right=z2;
			   Q.insert(z1.f+z2.f, z);
		return Q.findMin();					  
```
- Struttura TreeNode:
	- f=frequenza
	- c=carattere.
- ## Vantaggi:
	- semplici da programmare 
	- solitamente efficienti
	- in alcuni casi(quando è possibile dimostrare la proprietà di scelta greedy) danno la suluzione _ottimo_
- ## Svantaggi:
	- Non tutti i problemi ammettono una soluzione greedy
	- Quindi, in certi casi, gli algoritmi greedy non possono essere usati se si vuole la soluzione ottima.
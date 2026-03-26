---
tags:
aliases:
data: "`2026-03-12 17:59`"
---
- # linguaggio di diagonalizzazione
	- Per ogni stringa binaria è possibile concatenare un $1$ davanti in questo modo si riesce a dire che le stringhe binarie sono numerabili infinite quanto i _numeri naturali_ $\mathbb{N}$ 
	- Questa cosa si può fare anche per le funzioni di transizione codificate delle macchine $M$ date a $M_{u}$ rendendole tante quanto i _numeri naturali_ valido anche quindi per gli _algoritmi_
	- ## Dim:
		- Faccio una tabella con sulle colonne le _stringhe di input_ sulle righe ci metto una _macchina di turing_ 
			- ![[Pasted image 20260307112859.png]]
				- L' $1$ indica che quella stringa $w_{i}$ è accettata da $M_{i}$ 
				- Lo 0 invece il contrario.
		- $\chi_{L}=\{1,0,0,1 ...\}$ descrive chi è dentro e chi è fuori $L$ quindi la si usa per dire quale stringa viene accettata da $M_{i}$
		- Ci si segna poi la diagonale della matrice $D=\{0,0,1,0, ...\}$
		- Complemento questa diagonale $\bar{D}=\{1,1,0,1,...\}$
		- $L_{d}=\{w_{i}|M_{i}\ \not \vDash w_{i}\}$ insieme di stringhe che se fossero date in input ad una certa macchina non verrebbero riconosciute (_linguaggio di diagonalizzazione_)
			- Questo linguaggio non può essere accettato da nessuna macchina 
			- Perché c'è almeno una stringa appartenente a questo linguaggio che non viene accettata da una certa macchina e siccome sulla tabella sono elencate tutte le _macchine_ non ce n'è una che potrebbe accettarla.
		- ### Formalizzazione:
			- assumo che che una qualche riga della matrice contenga $\overline{D}$ e diciamo che questa sia la $i$-esima riga con $i$-esimo simbolo $\alpha$ ed è come dire che l'$i$-esimo elemento della diagonale contenga $\alpha$. questa riga però non può essere $\overline{D}$ perché essa contiene l'opposto di tutti i simboli sulla diagonale ottenendo quindi una contraddizione e che non ci siano righe della matrice contenenti $\overline{D}$.
			- e quindi se non ci sono righe (ovvero macchine di turing) coincidenti con $\overline{D}$ che rappresenta il vettore caratteristico di $L_{d}$ allora non ci sono _MdT_ il cui linguaggio sia $L_{d}$ 
		- Quindi risulta che $L_{d}$ si trova al di fuori di $RE$ 
- # Link utili:
	- 
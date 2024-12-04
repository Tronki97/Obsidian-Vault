---
tags: []
aliases: 
data: "`2024-08-31 20:05`"
---
- # Def:
	- Si tratta di un algoritmo che attraverso delle operazioni elementari trasforma una matrice associata ad un sistema lineare in una [[Matrici#^f9d3d2||matrice a scala]], il cui sistema è equivalente.
	- grazie a due teoremi fondamentali, è possibile applicare Gauss per risolvere problemi di algebra lineare senza passare per i sistemi
- # Teoremi
	- 1) le operazioni elementari sulle righe di una matrice non cambiano il [[Sottospazio generato]] dalle righe della matrice
		- ciò ci permette di vedere i vettori come righe di una matrice, e quindi applicare la riduzione di Gauss senza modificare il sottospazio generato.
	- 2) le righe non nulle di una matrice a scala sono [[Indipendenza lineare||linearmente indipendenti]]
		- Quindi le righe di una matrice possono essere considerate come come vettori linearmente indipendenti
- # Applicazioni:
	- ## Enunciato:
		- se $V=\langle v_1,...,v_m\rangle$ costruiamo una matrice di vettori in riga, e usando Gauss otteniamo $w_1,...,w_k$ righe. per il primo teorema abbiamo che:
			- $$V=\langle v_1,...,v_{m}\rangle=\langle w_1,...,w_{k}\rangle$$ 
		- mentre per il secondo teorema ho che $w_{1},...,w_{k}$ sono linearmente indipendenti, quindi $\beta = w_{1},...,w_{k}$ che è una [[Base||base]] di V e ha [[Dimensione||dimensione]] = k 
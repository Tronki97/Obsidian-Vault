- Sia V uno [[Spazio vettoriale]]. i vettori $v_1,...,v_{n}\in V$ sono _linearmente indipendenti_ se per ogni [[Combinazione lineare]]$$\lambda_1 v_1+...+\lambda_n v_n=\underline{0}$$ si ha $\lambda_1=...=\lambda_{n}=0$ 
  ciò significa che tali vettori sono _linearmente indipendenti_ se l'unica [[Combinazione lineare]] che da come risultato: $\underline{0}$  è quella con scalari tutti nulli e in tal caso si dice che i vettori $v_1,...,v_n$ sono linearmente indipendenti.
- ## ES: ^5edba6
	- dato l'insieme di vettori (1,1),(1,3), questo linearmente indipendente perché: $$\lambda_1 (1,1)+\lambda_2 (1,3)=(0,0)\Longleftrightarrow \lambda_{1}=\lambda_{2}=0$$per verificarlo sviluppo il prodotto per scalare$$(\lambda_{1}+\lambda_{2},\lambda_{1}+3\lambda_{2})=(0,0)$$Scrivo il sistema lineare associato:$$\begin{cases}\lambda_{1}+\lambda_{2}=0\\\lambda_{1}+3\lambda_{2}=0\end{cases}$$Costruisco la [[Matrici#^f9d3d2||matrice a scala]] associata usando [[Algoritmo di Gauss||Gauss]] $$\begin{pmatrix}1&1|&0\\0&2|&0\end{pmatrix}$$Per cui $rr(A)=2=rr(A|\underline{b})=$ n° di incognite per cui la soluzione è una sola ovvero quella _nulla_ quindi i vettori sono linearmente indipendenti.
- ## Proposizioni
	- L'insieme$$\underline{0},v_1,...,v_n$$
	  è _sempre dipendente_ perché: $\lambda_{0}$ (che moltiplica il vettore nullo) può essere qualsiasi valore in $\mathbb{R}$ e tutti gli altri $\lambda_{1,..,n}=0$: il risultato è il vettore nullo ma non tutti i $\lambda$ sono per forza 0.
	- ##### N.B
		- se S è un insieme di vettori linearmente indipendenti allora ogni suo sottoinsieme è a sua volta linearmente indipendente. 
	- ### Multiplicità
		- sia V uno [[Spazio vettoriale]]. $v_1,...,v_{n} \in V$ sono dipendenti $\Longleftrightarrow$ uno di essi è  [[Combinazione lineare]] degli altri.
		- #### Dimostrazione
			- $\implies$)
				- per ipotesi so che $v_1,...,v_{n}\in V$ sono dipendenti, ovvero esiste una sequenza di scalari che da come risultato il vettore nullo con un qualche $\lambda_{k}\ne 0$ per dimostrare quindi che in quell'insieme di vettori ce n'è uno che è combinazione lineare degli altri, prendo il vettore $v_{k}$ associato a $\lambda_{k}\ne 0$ e o isolo.$$\lambda_1 v_1+...+\lambda_{k}v_{k}+\lambda_n v_n=\underline{0}$$ che diventa:$$-\lambda_{k}v_{k}=\lambda_1 v_1+...+\lambda_n v_n$$ Visto che $\lambda_{k}\ne 0$ per ipotesi posso divide entrambi i membri per $-\lambda_{k}$ :$$v_{k}=-\frac{\lambda_{1}}{\lambda_k} v_{1}-...-\frac{\lambda_{n}}{\lambda_k} v_{n}$$ E ciò dimostra che esiste un vettore esprimibile come combinazione lineare degli altri
			- $\Longleftarrow$)
				- per ipotesi so che esiste un vettore, compreso tra $v_1,...,v_n$ esprimibile come combinazione lineare degli altri: ovvero $$\exists v_{k}\in v_1,...,v_{n}:v_{k}=\lambda_1 v_1+...+\lambda_n v_n$$devo dimostrare che i vettori $v_1,...,v_n$ sono dipendenti o che non sono indipendenti, cioè che $$\exists \lambda_{1},...,\lambda_{n}:\lambda_1 v_1+...+\lambda_n v_n=\underline{0}\ \  \wedge \lambda_{k}\ne 0$$ In pratica trovare quel $\lambda_{k}$ non nullo che renda dipendenti quei vettori.
				  Parto dall'ipotesi e porto $v_{k}$ all'altro membro:$$\lambda_1 v_1+...+(-1)v_{k}+\lambda_n v_{n}=\underline{0}$$sono riuscito a dimostrare che quel $\lambda_{k}$ non nullo che rende $v_{k}$ combinazione lineare degli altri ovvero: -1.
	- ## ES:
		- presi i vettori $(1,0),(0,1),(1,2)$ si può notare come $(1,2)=(1,0)+2(0,1)$
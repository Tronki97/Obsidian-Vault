---
~
---
- # DEFINIZIONE
	- Sia V uno [[Spazio vettoriale]], allora un insieme $v_1,...,v_n$ si dice _base_ di V se:
		- 1)$v_1,...,v_n$ [[Sottospazio generato||generano]] V, ovvero $V=\langle{v_1,...,v_n}\rangle$ 
		- 2)$v_1,...,v_n$ sono [[Indipendenza lineare||linearmente indipendenti]] 
	- E si scrive:$$\beta=v_1,...,v_n$$
- ## ES:
	- $(1,0),(0,1)$ è base di $\mathbb{R}^{2}$ (generano e sono indipendenti)
	- $(1,0),(0,1),(1,2)$ non è base di $\mathbb{R}^{2}$ (generano ma non sono indipendenti).
	- $(1,2,0),(0,5,0)$ non è base di $\mathbb{R}^{3}$ (sono indipendenti ma non generano)
- ### PROPOSIZIONI:
	- #### Esistenza della base: ^6a952a
		- sia V uno spazio vettoriale [[Sottospazio generato#^90c15c||fg]] allora V ha una base 
		- ##### Dimostrazione:
			- Analizzo i casi $V:V=\underline{0}$ e $V=\langle{v_1,...,v_n}\rangle$ 
				- $V=\underline{0}$
					- in tal caso _per convenzione_ $\emptyset$ è una base di V  
				- $V=\langle{v_1,...,v_n}\rangle$
					- In questo caso, se $v_1,...,v_n$ sono indipendenti sono anche una base; altrimenti vuol dire che uno specifico vettore $v_{i}$ può essere espresso come [[Combinazione lineare]] degli altri, Per cui:
						- 1) Cancello $v_{i}$ dall'insieme dei generatori
						- 2) controllo de sono ancora dipendenti, in tal caso identifico la combinazione lineare che esprime $v_{i}$ e ricomincio dal punto 1; altrimenti ho la mia base.
		- ###### ES:
			- dato l'insieme di vettori $$S=(3,1+x,x^{2},5x,4x,-2x^{3},x^{2}+10x-1)$$sapendo che $\mathbb{R}_{3}[x]=\langle{S}\rangle$, ci viene chiesto di trovare un sottoinsieme di S che è una base di $\mathbb{R}_{3}[x]$ 
			- Dobbiamo cancellare da S i vettori dipendenti, fino ad arrivare ad avere un insieme di vettori linearmente indipendenti. Iterando l'algoritmo di cancellazione si arriva ad ottenere l'insieme $(3,x^{2},5x,-2x^{3})$. Per essere sicuro che siano linearmente indipendenti applico la definizione e rsolvo l'equazione.$$\lambda_{1}(3)+\lambda_{2}(x^{2})+\lambda_{3}(5x)+\lambda_{4}(-2x^{3})=\underline{0}\Longleftrightarrow$$ $$\Longleftrightarrow \lambda_{1}=\lambda_{2}=\lambda_3=\lambda_{4}=0$$
			  Il sistema associato risulta:$$\begin{cases}3\lambda_{1}=0\\ \lambda_{2}(x^{2})=0\\ \lambda_{3}(5x)=0 \\ \lambda_{4}(-2x^{3})=0\end{cases}$$Che ha come unica soluzione:$$\lambda_{1}=\lambda_{2}=\lambda_3=\lambda_{4}=0$$ Per cui sono linearmente indipendenti, e perciò generano anche $\mathbb{R}_{3}[x]$ e sono una sua base
	- $$S=v_1,...,v_{n}, \ V=\langle{S}\rangle \implies \exists \beta \ (base \ di\  V): \beta \subseteq S $$
	  Ciò è conseguenza diretta della proposizione precedente
	  - #### OSSERVAZIONE:
		  - Questa proposizione assume che V sia generato da S. ma anche se S generasse solo un sottospazio di V esisterebbe sempre una base di tale sottospazio di V che è sottoinsieme di S.$$S=v_1,...,v_{m} \ lin.indip \implies \exists \beta \ (base \ di\  V): S \subseteq \beta$$
		  - è una conseguenza del [[Teorema del completamento]] che ci dice che se si selezionano _m_ vettori indipendenti $\in V$, questi sono sicuramente un sottoinsieme di una base di V. 
		    _NOTA_: più che sottoinsieme si parla di sottoinsieme o uguale
		    
		    E' importante notare che non serve imporre la condizione $m\leq n$ dove $n$ è la [[Dimensione]] di V, perché questo è già implicito all'ipotesi che i vettori di S sono linearmente indipendenti. Questa infatti attiva il _teorema del completamento_ che impone $m\leq n$
 
 
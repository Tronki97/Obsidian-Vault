20/02/24
analizza il tempo di calcolo e la memoria occupata da un algoritmo in base alla dimensione di un input.

tempo(sec); memoria(MB) 

Comportamento asintotico:
- ignora costanti additive/moltiplicative e termini di ordine inferiore.
- descrive quanto velocemente tempo/memoria crescono rispetto all'input.
- possiamo confrontare le prestazioni di diversi algoritmi che risolvono lo stesso problema. 
- solo valori positivi per dimensioni di input e quantità di risorse
- ci interessa il rate di crescita.

ES:
$f_A(n)=10^2*n$ 
$f_B(n)=10^-2*n^2$ 
![[Pasted image 20240220133532.png]]

#### Definizione (_O_-grande)
Data una funzione di costo g(n) definiamo l’insieme di funzioni per cui g(n) rappresenta un limite asintotico superiore come:
$$O(g(n)) = {f (n) | ∃c > 0, n_0 ≥ 0\ tale che \ ∀n ≥ n_0, f (n) ≤ cg(n)}$$
il rate di crescita di f non sarà mai più grande di quello di g al massimo sarà uguale 


#### Definizione ($\ohm-grande$)
Data una funzione di costo g(n) definiamo l’insieme di funzioni per cui g(n)
rappresenta un limite asintotico inferiore come
$Ω(g(n)) = \{f (n) | ∃c > 0, n_{0} ≥ 0 \ tale che\  ∀n ≥ n_0, f (n) ≥ cg(n)\}$ 
una funzione può essere $\ohm-grande$ di se stessa.

#### Definizione($\Theta$)
Data una funzione di costo g(n) definiamo l’insieme di funzioni asintoticamente equivalenti a g(n) come
$$$Θ(g(n))=\{f (n)|∃c_1,c_2>0,n_0≥0 t.c. ∀n≥n_0,c_{1}g(n)≤f (n)≤c_{2}g(n)\}$$
ES:
	$log \ (n^{2})=\Theta(log \ n)$ calcolo il lim del rapporto:$$\lim_{n->\infty}{ \frac{log \ n^2}{log \ n}}=\lim_{n->\infty}{ \frac{2log \ n}{log \ n}}=2>0$$ 
che implica $log \ (n^{2})=\Theta(log \ n)$ 

ora dobbiamo utilizzare queste notazioni per verificare il tempo di calcolo di algoritmi.

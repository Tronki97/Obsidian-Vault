---
tags: []
aliases:
  - O-grande
  - o-piccolo
data: "`2024-08-31 20:05`"
---
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

- #### Definizione (_O_-grande)
	- Data una funzione di costo g(n) definiamo l’insieme di funzioni per cui g(n) rappresenta un limite asintotico superiore come:
	- $$O(g(n)) = {f (n) | ∃c > 0, n_0 ≥ 0\ : \ ∀n ≥ n_0, f (n) ≤ cg(n)}$$
	- il rate di crescita di f non sarà mai più grande di quello di g al massimo sarà uguale 
- #### Definizione ( $\ohm-grande$ )
	- Data una funzione di costo g(n) definiamo l’insieme di funzioni per cui g(n)
	- rappresenta un limite asintotico inferiore come
	- $Ω(g(n)) = \{f (n) | ∃c > 0, n_{0} ≥ 0 \ :\  ∀n ≥ n_0, f (n) ≥ cg(n)\}$ 
	- una funzione può essere $\ohm - grande$ di se stessa.
- #### Definizione($\Theta$)
	- Data una funzione di costo g(n) definiamo l’insieme di funzioni asintoticamente equivalenti a g(n) come
	- $$Θ(g(n))=\{f (n)|∃c_1,c_2>0,n_0≥0 t.c. ∀n≥n_0,c_{1}g(n)≤f (n)≤c_{2}g(n)\}$$
	- ES:
		- $log \ (n^{2})=\Theta(log \ n)$ calcolo il lim del rapporto:$$\lim_{n->\infty}{ \frac{log \ n^2}{log \ n}}=\lim_{n->\infty}{ \frac{2log \ n}{log \ n}}=2>0$$che implica $log \ (n^{2})=\Theta(log \ n)$ 
- #### Definizione (o-piccolo)
	- data una funzione $g(n)$ si definiscono le funzioni che sono _dominate asintoticamente_ da $g(n)$ come:$$o(g(n))=f(n)|\forall c >0,\exists n_{0}\geq 0:\forall n\geq n_{0},f(n)<cg(n)$$
		- Per ogni funzione di costo $g(n) \ne o(g(n))$ $n^{2}\ne o(n^{2})$, $n^{2}=O(n^{2})$
		- per definizione, se $f(n)=o(g(n)) \implies f(n)=O(g(n))$ 
			- il contrario di solito è non vero
- #### Definizione ($\omega-piccolo$)
	- data una funzione $g(n)$ si definiscono le funzioni che sono _dominate asintoticamente_ da $g(n)$ come:$$\omega(g(n))=f(n)|\forall c >0,\exists n_{0}\geq 0:\forall n\geq n_{0},f(n)>cg(n)$$
		- per ogni funzione di costo $g(n)\ne \omega(g(n))$
			- $n^{2}\ne \omega(n^{2})$, $n^{2}=\Omega(n^{2})$
		- per definizione $f(n)=\omega(g(n)) \implies f(n)=\Omega(g(n))$
			- di solito il contrario è non vero
- ### Proprietà della notazione asintotica
	- #### Transitività
		- $$f(n)=O(g(n)) \wedge g(n)=O(h(n)) \implies f(n)=O(h(n)$$
		- vale anche per $\Omega,\Theta,o, \omega$
	- #### Riflessività
		- $$f(n)=O(f(n))$$
		- vale anche per $\Omega,\Theta$ ma non per $o, \omega$
	- #### Simmetria
		- $$g(n)=\Theta(f(n))\iff f(n)=\Theta(g(n))$$
	- #### Simmetria trasposta
		- $f(n)=O(g(n))\iff g(n)=\Omega(f(n))$
		- $f(n)=o(g(n))\iff g(n)=\omega(f(n))$
- ### Regole utili
	- #### Somma 
		- $f_{1}(n)=O(g_{1}(n))$, $f_{2}(n)=O(g_{2}(n))$ allora:$$f_{1}(n)+f_{2}(n)=O(g_{1}(n))+O(g_{2}(n))=O(g_{1}(n)+g_{2}(n))$$
	- #### Prodotto
		- $f_{1}(n)=O(g_{1}(n))$, $f_{2}(n)=O(g_{2}(n))$ allora:$$f_{1}(n)\cdot f_{2}(n)=O(g_{1}(n))\cdot O(g_{2}(n))=O(g_{1}(n)\cdot g_{2}(n))$$
	- #### Moltiplicazione per una costante
		- $f(n)=O(g(n))$ e  $a>0$ allora $$a\cdot f(n)=O(g(n))$$
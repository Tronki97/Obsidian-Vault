- Il _cambio di base_ è un processo che consiste nel modificare, attraverso opportune formule, le [[Base||basi]] di riferimento di [[Applicazioni lineari definite da una matrice]] nel dominio e codominio.
- Infatti un'[[Applicazione lineare]] $f:\mathbb{R}^{n} \to \mathbb{R}^{m}$ identificata da una matrice $A$, può essere rappresentata da infinite basi diverse del dominio e del codominio:non obbligatoriamente quelle canoniche. Allora, modificando le basi, cambiano di conseguenza le [[Coordinate rispetto a una base]] e quindi anche le [[Matrici]] 
- ## Generalizzazione di un'applicazione lineare definita da matrice 
	- Per prima cosa c'è bisogno di generalizzare il concetto di applicazione lineare definita da una matrice. So che fissata la base canonica $\beta=v_1,...,v_n$ del dominio, potevo definire $f$ come:$$f(v)=A v$$Dove $A$ è una matrice che ha per colonne le coordinate delle immagini $f(v_{1}),...,f(v_{n})$ rispetto alla base canonica del codominio. 
	- Si nota quindi che sia codominio che nel dominio lavorassero sulle rispettive basi canoniche. 
	- Se invece volessi dare una definizione generale, si dovrebbe scrivere:$$A_{\beta \beta'}=M_{\beta}^{\beta'} \in M_{m\times n}(\mathbb{R})$$Tale che $$(f(v))_{\beta'} = A_{\beta \beta'} \cdot (v)_{\beta}$$dove $$A_{\beta\beta'} = \begin{pmatrix} (f(v_{1}))_{\beta'} & \cdots & (f(v_{n}))_{\beta'} \end{pmatrix}$$N.B: La versione non generale si scriverebbe come $$(f(v))_{c'} = A \cdot (v)_{c}$$Dove $c$ è la [[Base Canonica]] di $V$ e $c'$ quella di $W$
	- ### Dimostrazione:
		- Devo dimostrare che è sempre possibile creare una matrice $A$ in quel modo. Mi concentro sul caso $n=2$ e $m=3$ e mi fido del fatto che questo ragionamento può essere esteso in generale.
		- Fisso $\beta=v_{1},v_{2}$ base ordinata di $V$, e $\beta'=w_{1},w_{2},w_{3}$ e prendo un $v \in V$ per cui $v=\lambda_{1}v_{1}+\lambda_{2}v_{2}$([[Combinazione lineare]] di $\beta$) e $v_\beta=\lambda_{1},\lambda_{2}$. 
		  Ora devo definire $A_{\beta \beta'}$, per cui scrivo le immagini della base $\beta$, e poi le loro coordinate rispetto a $\beta'$. Allora ho $$f(v_{1})=\mu_{1} w_{1}+\mu_{2}w_{2}+\mu_{3}w_{3}$$e$$f(v_{2})=\mu_{4}w_{1}+\mu_{5}w_{2}+\mu_{6}w_{3}$$Per cui $(f(v_{1}))_{\beta'}= (\mu_{1},\mu_{2},\mu_{3})$ e $(f(v_{2}))_{\beta'}= (\mu_{4},\mu_{5},\mu_{6})$ Quello che rimane da fare è calcolare $f(v)$ per arrivare a definire la matrice, per cui $$f(v)=\lambda_{1}f(v_{1})+\lambda_{2}f(v_{2})=\lambda_{1}\mu_{1} w_{1}+\lambda_{1}\mu_{2}w_{2}+\lambda_{1}\mu_{3}w_{3}+$$$$+\lambda_{2}\mu_{4}w_{1}+\lambda_{2}\mu_{5}w_{2}+\lambda_{2}\mu_{6}w_{3}$$E se raccolgo $w_{1},w_{2},w_{3}$ ottengo:$$f(v)=(\lambda_{1}\mu_{1}+\lambda_{2}\mu_{4})w_{1}+(\lambda_{1}\mu_{2}+\lambda_{2}\mu_{5})w_{2}+(\lambda_{1}\mu_{3}+\lambda_{2}\mu_{6})w_{3}$$
		  - Ora le coordinate di $f(v)$ rispetto a  $\beta'$ saranno $$f(v)_{\beta'}=((\lambda_{1}\mu_{1}+\lambda_{2}\mu_{4}),(\lambda_{1}\mu_{2}+\lambda_{2}\mu_{5}),(\lambda_{1}\mu_{3}+\lambda_{2}\mu_{6}))$$Se raccogliessi le coordinate di $v$ rispetto a $\beta$, ovvero $\lambda_{1},\lambda_{2}$ posso riscrivere le coordinate come:$$(f(v))_{\beta'} = \begin{pmatrix} \mu_{1} & \mu_{4} \\ \mu_{2} & \mu_{5} \\ \mu_{3} & \mu_{6} \end{pmatrix} \cdot \begin{pmatrix} \lambda_{1} \\ \lambda_{2} \end{pmatrix} = A_{\beta \beta'} \cdot (v)_{\beta}$$e infatti $A_{\beta \beta'}=f(v_{1})_{\beta'},(f(v_{2})_{\beta'})$ Allora questa matrice esiste.
- ## Proposizioni
	- ### Composizione di applicazioni lineari 
		- Siano $f:V \to W$ e $g:W \to Z$ [[Applicazione lineare]], e $\beta, \beta', \mu$ le rispettive basi di ognuno [[Spazio vettoriale]] tali che posso definire le seguenti matrici associate a $f$ e $g$ in questo modo:
			- $A_{\beta \beta'}=M_{\beta}^{\beta'}(f)$
			- $B_{\beta' \mu}=M_{\beta'}^{\mu}(g)$
		allora si può definire la matrice associata a $g\circ f$ come $$C_{\beta\mu}=M_{\beta}^{\mu}(g\circ f)$$Per cui $C_{\beta\mu}=B_{\beta' \mu} \cdot A_{\beta \beta'}$
		- N.B: questa è un risultato di [[Composizione di applicazioni lineari#^aadc1d||questa proposizione]] ma utilizzando basi non obbligatoriamente canoniche
	- ### Inversa di un'identità
		- fissata una base $\beta$ di $V$ e $c$ base canonica di $V$ si ha che $$I_{c\beta}=I_{\beta c}^{-1}$$
	- ### Calcolo delle coordinate alternativo.
		- Preso un vettore $v\in V$ e una base ordinata $\beta$ di $V$ ho che $$(v)_{\beta} = I_{\beta c}^{-1} \cdot (v)_{c}$$Dove $I_{\beta {c}}^{-1}$ è la matrice identità da $\beta {c}$ (base canonica) inversa e $v_{c}$ sono le coordinate di $v$ rispetto alla base canonica $c$. Questo segue dal fatto che $(id(v))_{\beta}=M_{c}^{\beta} (id)\cdot (v)_{c}$ e $M_{c}^{\beta}(id)=I_{\beta c}^{-1}$ 
		  
		 _N.B_: so come calcolare le coordinate di un vettore rispetto a una base, _ovvero risolvendo il sistema lineare associato_. Ma la fatica equivale a quella di calcolare l'inversa, e questo metodo è utile nel momento in cui si devono calcolare tanti vettori rispetto ad una base, infatti in quel caso non ha senso fare tanti sistemi lineari, conviene calcolarsi una volta l'inversa e fare tot. prodotti righe per colonna.
- ## Formula per il cambio di base
	- ### ES introduttivo:
		- sia $f:\mathbb{R}^{n} \to \mathbb{R}^{n}$ un'applicazione lineare definita come $f=id_{\mathbb{R}^{n}}$, ovvero l'identità, allora so che la matrice associata ad $f$ rispetto a $c$ _base canonica_ di $\mathbb{R}^{n}$ è $$A_{cc}= \begin{pmatrix}1&0&0\cdots&0\\0&1&0\cdots&0\\\vdots&0&\ddots &0\\0&0&\cdots&1\end{pmatrix}$$ Ovvero la [[Matrice identità]] 
		- Fisso ora una base ordinata $\beta=v_1,...,v_n$ di $\mathbb{R}^{n}$ e voglio ottenere 
			- $A_{\beta c}$
			- $A_{\beta \beta}$
			- $A_{c\beta}$
			In particolare prendo l'esempio per $n=2$ e $\beta=e_{1}-e_{2}, 2e_{1}+3e_{2}$
		- $A_{\beta c}$
			- Questa matrice è facile da ottenere. Infatti se so che $A$ è della forma $$A=f(v_{1})_{c},...,f(v_{n})_{c}$$Allora essendo esattamente le coordinate di un qualunque vettore rispetto alla base canonica esattamente quel vettore, ottengo che$$A_{\beta c}=(f(v_{1}),f(v_{2}))$$ed essendo $f=id$ ho che $$A_{\beta c}=(v_{1},v_{2})$$Per cui $$\begin{pmatrix}1&2\\-1&3  \end{pmatrix}$$
		- $A_{\beta \beta}$
			- In questo caso devo riscrivere le coordinate di $f(v_{1}),f(v_{2})$ rispetto a $\beta$, ovvero proprio a $v_{1},v_{2}$ ed il risultato è$$A_{\beta \beta}=(f(v_{1})_\beta,f(v_{2})_\beta)$$Ovvero$$\begin{pmatrix}1&0\\0&1\end{pmatrix}$$
			  _N.B_: è l'identità, di fatto se la basi del dominio e del codominio sono uguali viene sempre la _matrice identità_(non solo quando si ha la base canonica)
		- $A_{c \beta}$
			- Questo è il caso più difficile, viene infatti richiesto $$A_{c \beta}=f(e_{1})_{\beta},f(e_{2})_\beta$$e quindi di trovare le coordinate di $f(e_{1}),f(e_{2})$ rispetto alla base $\beta$. E questo richiede di risolvere $n$ sistemi lineari dove $n$ è l'ordine dello [[Spazio vettoriale]]
			- Per fare prima si utilizza un trucco: le composizioni. 
			- Si tratta di una relazione di composizioni che si può riassumere in $$A_{\beta \beta}=A_{c \beta}\cdot A_{\beta c}$$Infatti queste matrici $A$ sono associate a delle applicazioni lineari da $\mathbb{R}^{n}$ a $\mathbb{R}^{n}$, e so dalla teoria che la composizione tra due funzioni $g \circ f$ per cui $f=L_{A}$ e $g=L_{B}$ si può scrivere  come $g \circ f=L_{BA}$.
			- Compresa questa relazione, sapendo che $A_{\beta \beta}=I$, ricavo che $A_{c \beta}$ non è che l'[[Matrice invertibile||inversa]] di $A_{\beta c}$ 
			- Calcolo l'inversa di $A_{\beta c}$ usando allora il metodo standard che usa l'[[Algoritmo di Gauss]] e ottengo proprio $A_{c \beta}$
	- ### Formula:
		- Sia $f:\mathbb{R}^{n} \to \mathbb{R}^{m}$ lineare, e $A_{cc'}=M_{c}^{c'}(f)$ la matrice associata ad $f$ sulle basi canoniche di dominio e codominio. Fisso $\beta$ base ordinata di $\mathbb{R}^{n}$ e $\beta'$ base ordinata di $\mathbb{R}^{m}$. allora ho che$$A_{\beta \beta'}=I_{c'\beta'}\cdot A_{cc'}\cdot I_{\beta c}=I_{\beta' c'}^{-1}\cdot A_{cc'}\cdot I_{\beta c}$$
		- Fondamentalmente se a $A_{cc'}$ aggiungo due funzioni identità tra le due basi $\beta, \beta'$ in modo da ottenere una $I_{\beta c}$ e una $I_{c' \beta'}$, posso scrivere $L_{A_{\beta \beta'}}$ come la composizione di 3 funzioni, e quindi $A_{\beta \beta'}$ come la moltiplicazione di 3 matrici.
- ## ES
	- determina se possibile un'applicazione lineare $f:\mathbb{R}^{3} \to \mathbb{R}^{3}$ tale che:
		- $ker(f)=\langle{e_{1}+e_{2}+2e_{3}}\rangle=\langle{(1,1,2)}\rangle$ 
		- $Im(f)=\langle{e_{1}-e_{2},e_{2}+7e_{3}}\rangle=\langle{(1,-1,0),(0,1,7)}\rangle$
	- Quindi scrivere la matrice associata ad $f$ rispetto alla base canonica.
	- Per prima cosa controllo la compatibilità col [[Teorema della dimensione]]$$3=dim(ker(f))+dim(Im(f))=1+2=3$$Ora costruisco$f$ sfruttando i vincoli imposti su $ker$ e $Im$. So infatti che $f(1,1,2)=\underline{0}$ allora creo una base di $\mathbb{R}^{3}$ che contenga proprio $(1,1,2)$, _perché so dove è mappato_: per esempio prendo come base $$\beta=(1,1,2),(0,1,0),(0,0,1)=v_{1},v_{2},v_{3}$$Che so essere base dal [[Teorema GEL]] e Gauss. Quindi impongo le immagini dei vettori della base in modo da far coincide con i vettori che generano l'[[Immagine di una funzione||immagine]](da vincolo), ovvero:
		- $f(1,1,2)=(0,0,0)$ in modo da rispettare il $ker$
		- $f(0,1,0)=(1,-1.0)$
		- $f(0,0,1)=(0,1,7)$ 
	- Ora, per il [[Teorema di esistenza e unicità di un'applicazione lineare]] so che questa $f$ esiste ed è unica.
		- _Osservazione_: so che $\langle{(1,1,2)}\rangle \le ker(f)$, e ciò non mi dice che il nucleo sia proprio uguale. Ma per il teorema della dimensione si ha che $dim(ker(f))=1$ perciò per forza si avrà $\langle{(1,1,2)}\rangle = ker(f)$ rispettando così il vincolo imposto.
	- Per scrivere la matrice la matrice associata a $f$ rispetto alla base canonica parto con la scrittura rispetto alla base $\beta$ nel dominio, e $c$ nel codominio, ovvero:$$A_{\beta c}=(f(v_{1})_{c},f(v_{2})_{c}, f(v_{3})_{c})=\begin{pmatrix}0&1&0\\0&-1&1\\0&0&7\end{pmatrix}$$Ma a me serve $A_{cc}$ quindi ricavo che:$$A_{cc}=A_{\beta c}\cdot I_{c \beta}=A_{\beta c}\cdot I_{\beta c}^{-1}$$Quindi per calcolare $A_{cc}$ resta da trovare $I_{\beta c}^{-1}$. Intanto calcolo $I_{\beta c}$, mettendo in colonna i vettori della base $\beta$$$I_{\beta c}=\begin{pmatrix}1&0&0\\ 1&1&0\\ 2&0&1\end{pmatrix}$$e calcolo la sua inversa con gauss ottengo:$$I_{\beta c}^{-1}=\begin{pmatrix}1&0&0\\-1&1&0\\-2&0&1\end{pmatrix}$$Ora, con il prodotto righe per colonne $A_{\beta c}\cdot I_{\beta c}^{-1}$ ottengo $$A_{cc}= \begin{pmatrix}-1&1&0\\-1&-1&1\\-14&0&7\end{pmatrix}$$
	- #### Metodo alternativo:
		- Un metodo più veloce per trovare $f$ consiste nel sfruttare la sua linearità. Se infatti so che $$f(1,1,2)=f(e_{1}+e_{2}+2e_{3})=f(e_{1})+f(e_{2})+2f(e_{3})=\underline{0}$$allora posso scrivere che $f(e_{1})$ in funzione di $f(e_{2})$ e $f(e_{3})$ in questo modo:$$f(e_{1})=-f(e_{2})-2f(e_{3})$$ Per cui mando $f(e_{2})$ e $f(e_{3})$ rispettivamente in $(1,-1,0),(0,1,7)$ così da rispettare il vincolo dell'immagine, e poi calcolare $f(e_{1})$.
 
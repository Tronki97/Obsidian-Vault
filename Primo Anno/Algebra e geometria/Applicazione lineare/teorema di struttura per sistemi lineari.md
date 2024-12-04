---
tags: []
aliases: 
data: "`2024-08-31 20:05`"
---
- Questo teorema ci dice che considerato $A \underline{x}=b$ un sistema lineare di $m$ equazioni in $n$ incognite ove $A \in M_{m\times n}$ che ammette almeno 2 soluzioni, allora l'insieme delle soluzioni del sistema può essere scritto come:$$S=v+z|Az=\underline{0}=v+z|z\in ker(L_{A})$$Ovvero come le soluzioni del [[Kernel]] dell'[[Applicazioni lineari definite da una matrice]] $L_{A}$ traslate di $v$, ove $v$ è una soluzione particolare del sistema.
- ### Dimostrazione 
	- La dimostrazione richiede di unire alcune proprietà della [[Controimmagine]] di un'applicazione $f$. in particolare sappiamo dalla [[Controimmagine#^07e889||prima proposizione]] che la controimmagine può essere scritta come:$$f^{-1}(w)=v \in V|A v=w=L_{A}^{-1}(w)$$Ovvero come l'insieme di soluzioni di un sistema lineare $Av=w$
	  e dalla [[Controimmagine#^c64144||seconda proposizione]] ricavo che la controimmagine può essere scritta come $$f^{-1}(w)=v+z|z\in ker(f)$$Per cui se unisco le due proposizioni ottengo che le soluzioni di un sistema lineare del tipo $Av=w$ si possono scrivere $$S=f^{-1}(w)=L_{A}^{-1}(w)= v+z|z\in ker(L_{A})$$dove $v$ è la soluzione del sistema perché infatti $v \in f^{-1}(w)$ in quanto $f(v)=w$.
- ## Conseguenze 
	- questo teorema ci dice che le soluzioni di un sistema lineare $Ax=b$ sono la soluzione del sistema lineare omogeneo $Ax=\underline{0}$ (il nucleo di $L_{A}$) traslate di una soluzione $v$
	 
	 
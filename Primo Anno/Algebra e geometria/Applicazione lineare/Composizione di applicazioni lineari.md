---
tags: []
aliases: 
data: "`2024-08-31 20:05`"
---
- Una composizione di [[Applicazione lineare]] $f,g$ t.c $f:V \rightarrow W$ e $g:W \rightarrow Z$ è definita dalla funzione composta:$$g \circ f:V \rightarrow Z|(g \circ f)(v)=g(f(v))$$
- ## Proposizioni:
	- ### Linearità 
		- Siano $f,g$ applicazioni lineari t.c $f:V \rightarrow W$ e $g:W \rightarrow Z$ e $g \circ f:V \rightarrow Z$ la loro composizione, allora anche essa è lineare.
		- #### Dimostrazione:
			- Uso la definizione di [[Applicazione lineare]], per cui vale che:
				- 1)$(g\circ f)(u+v)=(g\circ f)(u)+(g\circ f)(v)$ 
				- 2)$(g\circ f)(\lambda v)=\lambda (g\circ f)(v)$
			- 1) Ho che $$(g\circ f)(u+v)=g(f(u+v))=g(f(u)+f(v))=$$$$=g(f(v))+g(f(u))=(g\circ f)(u)+(g\circ f)(v)$$
			- 2)Ho che:$$(g\circ f)(\lambda v)=g(f(\lambda v))=g(\lambda f(v))=\lambda g(f(v))=$$$$=\lambda (g \circ f)(v)$$ 
	- #### Matrice associata: ^aadc1d
		- Siano $f:\mathbb{R}^{n} \rightarrow \mathbb{R}^{s}$ e $g:\mathbb{R}^{s} \rightarrow \mathbb{R}^{m}$ lineari, e $A$ e $B$ le [[Applicazioni lineari definite da una matrice||matrici associate]] rispettivamente, ovvero: $f=(L_{A})$ e $g=(L_{B})$ allora la matrice associata alla composta $(g\circ f)$  è $BA$ ovvero:$$(g\circ f)=L_{BA}$$N.B: $A \in M_{s\times n}$, $B \in M_{m\times s}$ per cui $BA \in M_{m\times n}$
		- #### Dimostrazione:
			- Se $f(\underline{x})=A \underline{x}$ e $g(\underline{x})=B \underline{x}$ allora:$$(g\circ f)(\underline{x})=g(f(\underline{x}))=g(A \underline{x})=BA \underline{x}$$Qed.
$f: [a,b] ---> \mathbb{R}$
1) $x_{0}\in ]a, b[$ punto di max o min rel
2) f è derivabile in $x_0$ 
3) allora $f'(x_{0)}=0$ 

#### Dimostrazione 

supponiamo $x_0$ p.MAX rel:
	$\exists\ r >0 :$
	$f(x)\leq f(x_0)$     $\forall x \in I_r(x_0)$ cioè $x_0-r<x<x_0+r$ 
	![[Pasted image 20231108222719.png]]
	Caso (A)
		$x_0-r<x<x_0$ :
		![[Pasted image 20231108223224.png]]
		$\frac{{f(x)-f(x_0)}}{x-x_{0}} \geq 0$     $\forall x : x_0-r<x<x_0$ :
		f è derivabile in $x_0$ 
		$\exists \lim_{x\to{\x_0}^-}$ $\frac{{f(x)-f(x_0)}}{x-x_{0}}$ = ${f'}_-(x_0)\geq0$ 
		il $\geq$ è garantito dal [[teorema di permanenza del segno]] 
	Caso (B)
		$x_0<x<x_0+r$ :
		![[Pasted image 20231108224227.png]]
		$\frac{{f(x)-f(x_0)}}{x-x_{0}} \leq 0$     $\forall x : x_0<x<x_0+r$ 
		f è derivabile in $x_0$
		$\exists \lim_{x\to{\x_0}^+}$ $\frac{{f(x)-f(x_0)}}{x-x_{0}}$ = ${f'}_+(x_0)\leq0$ 
		il $\leq$ è garantito dal [[teorema di permanenza del segno]] 
Siccome f è derivabile in $x_0$:
$$f'(x_0)=\begin{cases} {f'}_-{(x_0)}\geq0 \longrightarrow f'(x_0)\geq0 \\ 
 \\

{f'}_+{(x_0)}\leq0 \longrightarrow f'(x_0)\leq0\\
\end{cases}$$ di conseguenza $f'(x_0)=0$     

$f:\ ]a,b[ ---> \mathbb{R}$
$0 \in \ ]a,b[$

miglior approssimazione di 1° grado di f per x-->0?

Sviluppo di Taylor al primo ordine:

Se f è derivabile in x=0 allora

- $$\lim_{x->0} \frac{{f(x)-f(0)}}{x} -f'(0)=0\ --->$$
- $$\lim_{x->0} \frac{{f(x)-f(0)-f'(0) x}}{x} =0\ --->$$
- $$f(x)= f(0)-f'(0)x + o(x)$$
Ed è la miglior approssimazione di f perché l'errore tende a 0 più velocemente di x.

Sviluppo al secondo ordine:
$$\lim_{x->0} \frac{{f(x)-f(0)-f'(0) x -ax^2}}{x^2} =0\ --->$$
usiamo Hopital assumendo f sia derivabile 2 volte 

- $$\lim_{x->0} \frac{{f(x)'-f(0)'-2ax}}{2x}= \frac{{{f(x)'-f(0)'}}}{2!\ x} -a $$

- $$\frac{1}{2!}\left(\lim_{x->0} \frac{{f(x)'-f'(0)}}{x} \right)a=\frac{1}{2!}f''(0)-a\ --->$$

 - $\frac{{1}}{2!}f''(0)-a=0$ --> $a= \frac{1}{2!}f''(0)$ 

- $$f(x)= f(0)-f'(0)x + \frac{1}{2!}f''(0)x^2+o(x^2)$$ 
per approssimare al 3° grado si ripete il procedimento

Def:
per f derivabile n volte in $x_0=0$ si definisce polinomio di Taylor di grado $\leq n$ : 
$$T_n(x)=\sum_{J=0}^{n}\limits \frac{f(0)^{J}}{J!}\ x^n$$ Polinomio di grado $\leq n$ tale che: $f(x)=T_n(x)+o(x^n)$ ^8c8850

### Teorema di Peano
per il teorema di  Peano si può definire il polinomio di Taylor in $x_0\not=0$ nel seguente modo:
$$T_n(x)=\sum_{J=0}^{n}\limits \frac{f(x_0)^{J}}{J!}\ (x-x_0)^J$$ Polinomio di grado $\leq n$ tale che: $f(x)=T_n(x)+o((x-x_0)^n)$  per x-->$x_0$  


### Polinomio dell'esponenziale
Polinomio di Taylor di $f(x)=e^x$ facendo riferimento al  [[#^8c8850||polinomio di Taylor generale]] diventa: (con x-->0)
$$T_n(x)=\sum_{J=0}^{n}\limits \frac{1}{J!} D^{J}e^x*x^J$$ $e^x=T_n(x)+o(x^n)$ 
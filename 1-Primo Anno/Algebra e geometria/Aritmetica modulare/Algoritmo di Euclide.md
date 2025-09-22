---
tags: []
aliases: 
data: "`2024-08-31 20:05`"
---
- # Def:
	- è un procedimento algebrico che calcola il _massimo comune divisore_ tra due numeri interi attraverso un numero finito di passi basati sul calcolo di alcune divisioni 
- # Passi:
	- siano $a,b\in \mathbb{Z}$ con $0\le b<a$ 
		- 1) se $b=0$ allora $mcd(a,b)=a$ 
		- 2)se $b\ne 0$ si svolge la divisione tra $a$ e $b$, chiamando $q$ il quoziente e $r$ il resto della divisione.$$a:b=q \ \text{resto} \ \ r\ \ \ 0\le r<b$$
		- 3)pongo $a=b$ e $b=r$  
		- 4) ricomincio dal punto 1
	- L'algoritmo termina quando si trova $b=0$
- # ES:
	- $mcd(603,270)$:$$603:270=2\ \ r=63$$$a=270$ $b=63$
	-  $$270:63=4\ \ r=18$$$a=63$ $b=18$
	-  $$63:18=3\ \ r=9$$$a=18$ $b=9$
	-  $$18:9=2 \ \ r=0$$$a=9$ $b=0$ di conseguenza l'algoritmo termina perché $b=0$ e quindi il:$$mcd(603,270)=9$$ 
---
tags:
  - TODO
aliases:
data: "`2026-05-04 09:16`"
---
- # Attacchi agli algoritmi di Hash:
	- si possono fare attacchi brute force 
	- precomputed attacks:
		- ## Catene di Hash:
			- si precalcolano un certo numero di password di lunghezza $k$ chiamandola così _catena_ 
			- si storano solo l'_inizio_ e _fine_ di ogni catena 
			- più $k$ è grande meno catene da immagazzinare ci saranno 
			- serve quindi una _funzione di riduzione_ $R:H \to P$ 
				- con $P$ che è lo spazio delle password 
				- si seleziona un $P'\subset P$ e poi $\forall p' \in P'$ si applica $H(p')=h'$ e poi $R(h')=p''$ e si ripete questo procedimento per $k$ volte
				- quindi si storano soltanto $p'$ e $p^{k}$ 
			- per recuperare $h$ si applica $H$ e $R$ fino a che la fine della catena non è trovato 
				- ![[Pasted image 20260504092519.png]]
			- un problema risultante delle catene di Hash è la probabile presenza di collisioni 
		- ## Rainbow tables:
			- si cerca di ridurre il problema di collisioni 
			- invece di usare una sola funzione di riduzione $R$ se ne usa una famiglia $\{R_{1}, ..., R_{n}\}$ 
	- _dictionary attack_:
		- si provano tutte le parole salvate in una lista predefinita molto lunga hashando la parola e confrontandola con l'hash salvato dal sistema, questo attacco viene reso meno efficace dal meccanismo di [[User Authentication#^1f596d|salting]] 
		- queste liste di parole sono rese pubbliche online 
- # Link Utili:
	- 
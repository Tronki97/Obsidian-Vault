- ## Derivazioni:
	- data una [[Grammatiche#^c95cdc||grammatica libera]] $G=(NT, T, R, S)$, _v_ deriva subito _w_ e lo denoto come:
		- $v \Rightarrow w$ se:
			- ![[Pasted image 20240924174523.png]]
		- si dice che da _v_ si deriva _w_ e lo denoto con $v \Rightarrow^{*}w$, se esiste una sequenza finita di derivazioni immediate che vanno da _v_ a _w_ 
			- $$v \Rightarrow w_{o} \Rightarrow w_{1} \Rightarrow... \Rightarrow w$$
			-  ![[Pasted image 20240924175152.png]]
				- $\Rightarrow^{*}$ è la chiusura:
					- ___Riflessiva___: una stringa si deriva in se stessa. 
					- ___Transitiva___: da _v_ deriva _z_ se esiste un _w_ derivato da _v_ che a sua volta deriva in _z_   
				- sempre rispetto all'operazione "$\Rightarrow$"
	- ### ES:
		- $S \to AB$     $A\to aA\ |\ a$    $B\to bB\ |\ b$
		- $$S \Rightarrow AB \Rightarrow AbB \Rightarrow Abb \Rightarrow abb $$
		- quindi: $$S \Rightarrow^{*} abb$$
		- ma anche:$$S \Rightarrow AB \Rightarrow aB \Rightarrow abB \Rightarrow abb$$Quindi si può evincere che esistono _derivazioni diverse_ che danno come risultato la stessa stringa. nao
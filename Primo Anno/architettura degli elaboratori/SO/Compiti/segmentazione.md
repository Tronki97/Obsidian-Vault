- ## Funzionamento
	- la memoria viene suddivisa in _segmenti logici_ ognuno con una grandezza adatta al elativo scopo. 
	- questi segmenti vengono virtualizzatati, separati dal loro concetto di fisicità.
	- infine appaiono come singole memoria distinte ad un generico programma.
	- ![[Pasted image 20240530175336.png]]
	- quindi non si accede più ad un unica memoria RAM ma a dei singoli blocchi separati e per accedervi ci sarà uno specifico codice:
		- ES: per accedere alla cella 24 del segmento dell'albero sintattico l'indirizzo dovrà essere composta da una _tupla_ (3, 24), 
			- dove 3 è il numero del Segmento
			-  24 l'indirizzo all'interno del segmento.
- ### AVVERTENZE
	- come per la [[paginazione(SO)||paginazione]] non tutti i segmenti possono stare in memoria, quindi i segmenti vanno swappati tra memoria principale e secondaria
	- però visto che ogni segmento ha grandezza diversa potrebbe verificarsi il fenomeno di [[frammentazione esterna]] 
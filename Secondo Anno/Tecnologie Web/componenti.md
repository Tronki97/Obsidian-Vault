---
tags: []
aliases:
  - custom element
  - template
  - virtual DOM
  - shadow DOM
  - binding
  - Vue
  - vue
data: "`2024-12-05 13:32`"
---
- # Intro:
	- certe parti di una pagina web come: 
		- carousel, navbar, pannello modale.
	- queste componenti non sono presenti in [[HTML]] ma vengono costruite ogni volta e gestite con [[Tipografia|CSS]] + [[Javascript]] + [[Markup]] ma sono complessi da fare e leggere.
- # Def:
	- un componente è un estensione dell’HTML che permette di creare comportamenti, in maniera efficiente e omogenea, ottenibili comunque con una combinazione dei 3 big ma in maniera lunga e inefficiente. 
- # Custom element:
	- estensioni dell’HTML che inseriscono in una posizione del DOM un certo componente.
- # Template:
	- un frammento HTML sostituito al custom element in fase di rendering.
- # Virtual DOM o Shadow DOM:
	- durante il rendering il processo di navigazione tra un template è realizzato su una copia nascosta del DOM, l’utente vedrà il cambiamento solo quando il processo di rendering sarà completato. 
- # Slot e interpolazione:
	- collegamenti tra componenti diversi in cui il template ospite fa spazio a quelli di altri componenti(_slot_) o alla visualizzazione di dati che vengono dalla logica.
- # Binding monodirezionale o bidirezionale:
	- meccanismo che mi tiene collegato il processo di computazione con la parte della pagina che farà poi vedere la computazione.
- # Vue:
	- 
- # Link Utili:
	- 
```haskell
sum[]=0
sum(n:l)=n+sum l

conj []= True
conj (b:l)= conj l && b

```

le funzioni sono simili ma "b" agisce a destra e "n" a sinistra

```Haskell
--sum

foldr op e []=e
foldr op e (n:l)=op n (foldn op e l)

foldr + 0 []= 0
foldr + 0 (n:l)= n+(foldn + 0 l)
```

```Haskell
--conj

foldl op e []=e
foldl op e (n:l)=op (foldn op e l) n 

foldl && True []= 0
foldl && True (n:l)= (foldn && True l) && n
```


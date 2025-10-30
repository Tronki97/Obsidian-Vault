---
jupyter:
  jupytext:
    formats: ipynb,md
    main_language: python
    text_representation:
      extension: .md
      format_name: markdown
      format_version: '1.3'
      jupytext_version: 1.18.1
  kernelspec:
    display_name: Python 3
    name: python3
---

<!-- #region id="4fba0484" -->
# Mnist classification with Nns
Un primo esempio di una rete neurale applicata al datset mnist

<!-- #endregion -->

```python id="4db1471c"
from tensorflow.keras.layers import Input, Dense
from tensorflow.keras.datasets import mnist
from tensorflow.keras.models import Model
from tensorflow.keras import utils
import numpy as np
```

<!-- #region id="eecbd1f6" -->
Si carica il dataset
<!-- #endregion -->

```python id="0a0159ee"
(x_train, y_train), (x_test, y_test) = mnist.load_data()
```

```python colab={"base_uri": "https://localhost:8080/"} id="f9b42f4b" outputId="73a22657-5264-4aee-f9ea-2341c7666b28"
print(x_train.shape)
print("pixel range is [{},{}]".format(np.min(x_train),np.max(x_train)))
```

<!-- #region id="d2935f80" -->
Si normalizza l'input nel range [0,1]
<!-- #endregion -->

```python id="d295595e"
x_train = x_train.astype('float32') / 255.
x_test = x_test.astype('float32') / 255.

x_train = np.reshape(x_train,(60000,784))
x_test = np.reshape(x_test,(10000,784))
```

<!-- #region id="fa589d41" -->
tf.keras.utils.to_categorical()
<!-- #endregion -->

```python colab={"base_uri": "https://localhost:8080/"} id="986f47a9" outputId="a5903460-8131-4c2c-c7fa-3d4337513969"
print(y_train[0])
y_train_cat = utils.to_categorical(y_train)
print(y_train_cat[0])
y_test_cat = utils.to_categorical(y_test)
```

<!-- #region id="59affc7c" -->
La prima rete implementa solo la [[Regressione logistica]]
<!-- #endregion -->

```python id="71ecb909"
xin = Input(shape=(784))
res = Dense(10,activation='softmax')(xin)

mynet = Model(inputs=xin,outputs=res)
```

```python colab={"base_uri": "https://localhost:8080/", "height": 204} id="8b1785fa" outputId="f8de7875-84ee-44a4-8111-c1467b2dd4c0"
mynet.summary()
```

<!-- #region id="08a5ab57" -->
Ora si necessita di compilare la rete.
Per farlo bisogna passargli 2 argomenti obbligatori:

*   l'**optimizer**, col compito di governare i dettagli dell'algoritmo di backpropagation
*   la **loss function**

Esistono molti optimizer predefiniti, quindi si dovrebbe scegliere il nostro preferito. Quello più comune è _Adam_, implementante un rateo di apprendimento adattivo con momentum

Opzionalmente, si può specificare metriche addizionali, usate principalmente per monitorare il processo di training
<!-- #endregion -->

```python id="975f1501"
mynet.compile(optimizer='adam',loss='categorical_crossentropy',metrics=['accuracy'])
```

<!-- #region id="feed27bf" -->
Ora si fitta il modello sul training set

Fittare richiede 2 argomenti: dati di training e _ground truth_, che saranno $x$ e $y$. In più si possono specificare epochs, dimensione del [[Tecnica del gradiente#^dd071f|batch]] e altri argomenti

In particolare, passare dati di validazione permette alla procedura di training di misurare _loss_ e _metriche_ sul _validation set_ alla fine di ogni _epoch_
<!-- #endregion -->

```python colab={"base_uri": "https://localhost:8080/"} id="79668f10" outputId="fd8b6a47-a5f4-456f-c789-e9ba73032332"
mynet.fit(x_train,y_train_cat, shuffle=True, epochs=15, batch_size=32,validation_data=(x_test,y_test_cat))
```

```python id="37e9786a"
xin = Input(shape=(784,))
x = Dense(128,activation='relu')(xin)
res = Dense(10,activation='softmax')(x)

mynet2 = Model(inputs=xin,outputs=res)
```

```python colab={"base_uri": "https://localhost:8080/", "height": 238} id="6e62b300" outputId="430f9725-6b08-4cd9-d87f-13e9e05fd977"
mynet2.summary()
```

```python id="04572186"
mynet2.compile(optimizer='adam',loss='categorical_crossentropy',metrics=['accuracy'])
```

```python colab={"base_uri": "https://localhost:8080/"} id="cef4f63e" outputId="b0e1ad06-3357-4535-f7ac-80d662ed3bfc"
mynet2.fit(x_train,y_train_cat, shuffle=True, epochs=10, batch_size=32,validation_data=(x_test,y_test_cat))
```

<!-- #region id="3eef329d" -->
Un incredibile miglioramento.
<!-- #endregion -->

<!-- #region id="8b52a602" -->
# Exercises







<!-- #endregion -->

<!-- #region id="Gcdc0Wv3_s4O" -->
# 1. Aggiungere un altro dense layer e controllare le performance della rete
<!-- #endregion -->

```python id="y1m3vdvh_lFQ"
xin = Input(shape=(784,))
x = Dense(128,activation='relu')(xin)
x = Dense(128,activation='relu')(x)
res = Dense(10,activation='softmax')(x)

mynet3 = Model(inputs=xin, outputs=res)
```

```python colab={"base_uri": "https://localhost:8080/", "height": 272} id="DEzVawppAy5X" outputId="c959c580-0d20-40ef-bbbf-2caa70093745"
mynet3.summary()
```

```python id="lq1nlCuwA3H_"
mynet3.compile(optimizer='adam',loss='categorical_crossentropy',metrics=['accuracy'])
```

```python colab={"base_uri": "https://localhost:8080/"} id="sXJhvVtLBDy8" outputId="4a1a7a4c-fc73-4567-b51c-45069dbffa45"
mynet3.fit(x_train,y_train_cat, shuffle=True, epochs=10, batch_size=32,validation_data=(x_test,y_test_cat))
```

<!-- #region id="EeVb9tD0Bgqx" -->
# 2. Rimpiazzare 'relu' con un altra funzione di attivazione
<!-- #endregion -->

```python id="vsD3mW4TBmIX"
xin = Input(shape=(784,))
x = Dense(128,activation='tanh')(xin)
res = Dense(10,activation='softmax')(x)

mynet4 = Model(inputs=xin, outputs=res)
```

```python colab={"base_uri": "https://localhost:8080/", "height": 238} id="ltIv1E4CCBRS" outputId="95a8c677-8413-4058-cee0-afb9a38eec07"
mynet4.summary()
```

```python id="zHenyeq3CEgx"
mynet4.compile(optimizer='adam',loss='categorical_crossentropy',metrics=['accuracy'])
```

```python colab={"base_uri": "https://localhost:8080/"} id="o-Ff-Ak6CGOC" outputId="52e12957-9878-4c19-bd92-2547ea8e70e4"
mynet4.fit(x_train,y_train_cat, shuffle=True, epochs=10, batch_size=32,validation_data=(x_test,y_test_cat))
```

<!-- #region id="Zqp0JXZHCkop" -->
# 3. Adattare la rete per lavorare con la _sparse_categorical_crossentropy_
<!-- #endregion -->

```python id="QpVSKYfZCl4m"
xin = Input(shape=(784,))
x = Dense(128,activation='relu')(xin)
res = Dense(10,activation='softmax')(x)

mynet5 = Model(inputs=xin, outputs=res)
```

```python colab={"base_uri": "https://localhost:8080/", "height": 238} id="HxmghnGnCoyr" outputId="9f4d85c7-69a9-46ff-f3ed-ae4fed2049be"
mynet5.summary()
```

```python id="kbXvJyyMCsaT"
mynet5.compile(optimizer='adam',loss='sparse_categorical_crossentropy',metrics=['accuracy'])
```

```python colab={"base_uri": "https://localhost:8080/"} id="ZXkH3Wy_Cuej" outputId="10264efe-adde-4269-a894-8f0488c93560"
mynet5.fit(x_train,y_train, shuffle=True, epochs=10, batch_size=32,validation_data=(x_test,y_test))
```

<!-- #region id="oQHTJVX3DHnI" -->
# 4. La funzione di fit ritorna una cronologia di training, con sequenze temporali per tutte le diverse metriche. Fare un plot.
<!-- #endregion -->

```python id="HwdL9y0uD2Nh"
import matplotlib.pyplot as plt
```

```python colab={"base_uri": "https://localhost:8080/"} id="vzP94k70DNB3" outputId="fc3efdaa-e4bd-4a29-d2ef-ea4757b2418d"
n_epochs = 25
accuracy2 = mynet2.fit(x_train,y_train_cat, shuffle=True, epochs=n_epochs, batch_size=32,validation_data=(x_test,y_test_cat))
accuracy3 = mynet3.fit(x_train,y_train_cat, shuffle=True, epochs=n_epochs, batch_size=32,validation_data=(x_test,y_test_cat))
accuracy4 = mynet4.fit(x_train,y_train_cat, shuffle=True, epochs=n_epochs, batch_size=32,validation_data=(x_test,y_test_cat))
accuracy5 = mynet5.fit(x_train,y_train, shuffle=True, epochs=n_epochs, batch_size=32,validation_data=(x_test,y_test))
```

```python colab={"base_uri": "https://localhost:8080/", "height": 467} id="-TMTCChoDvkz" outputId="30ee223b-4417-4b6e-81a8-6dfc99b5b48e"
plt.grid(True)
plt.xticks(range(0,n_epochs))
plt.xlabel('Epoch')
plt.ylabel('Accuracy')
plt.plot(accuracy2.history['accuracy'], color= 'r')
plt.plot(accuracy3.history['accuracy'], color= 'g')
plt.plot(accuracy4.history['accuracy'], color= 'y')
plt.plot(accuracy5.history['accuracy'], color= 'b')
```

```python colab={"base_uri": "https://localhost:8080/", "height": 467} id="0wxmjcYpLcjT" outputId="c7c831f4-5d36-4859-a41f-3e98818cca66"
plt.grid(True)
plt.xticks(range(0,n_epochs))
plt.xlabel('Epoch')
plt.ylabel('loss')
plt.plot(accuracy2.history['loss'], color= 'r')
plt.plot(accuracy3.history['loss'], color= 'g')
plt.plot(accuracy4.history['loss'], color= 'y')
plt.plot(accuracy5.history['loss'], color= 'b')
```

```python colab={"base_uri": "https://localhost:8080/", "height": 470} id="aT0g3HVdO_-H" outputId="9703cea0-99c5-4469-deb6-17ed4ce6d6d0"
plt.grid(True)
plt.xticks(range(0,n_epochs))
plt.xlabel('Epoch')
plt.ylabel('val accuracy')
plt.plot(accuracy2.history['val_accuracy'], color= 'r')
plt.plot(accuracy3.history['val_accuracy'], color= 'g')
plt.plot(accuracy4.history['val_accuracy'], color= 'y')
plt.plot(accuracy5.history['val_accuracy'], color= 'b')
```

```python colab={"base_uri": "https://localhost:8080/", "height": 471} id="nRUVefjuQYyG" outputId="f1a0a8db-63de-4892-f3c9-277eec3b3a1b"
plt.grid(True)
plt.xticks(range(0,n_epochs))
plt.xlabel('Epoch')
plt.ylabel('val_loss')
plt.plot(accuracy2.history['val_loss'], color= 'r')
plt.plot(accuracy3.history['val_loss'], color= 'g')
plt.plot(accuracy4.history['val_loss'], color= 'y')
plt.plot(accuracy5.history['val_loss'], color= 'b')
```

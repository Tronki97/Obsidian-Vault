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

<!-- #region id="kWnpkWLrl0Ux" -->
A simple animation showing linear regression
<!-- #endregion -->

```python id="F1OzYFvghh-S"
#linear regression example
import numpy as np
import matplotlib.pyplot as plt
import matplotlib.animation as animation
import time
```

```python id="-TRLVyaohgHE"
from matplotlib import rc

# equivalent to rcParams['animation.html'] = 'html5'
rc('animation', html='html5')
```

```python id="f82-5aOthrEr"
#a bunch of points on the plain
x = np.array([1,2,3,4,5,6,7,8,9,10])
y = np.array([14,12,13,15,11,9,8,4,2,1])

#gradient of the quadratic loss
def grad(a,b):
    d = y - (a*x + b)      #derivative of the loss
    da = - np.sum(d * x)   #derivative of d w.r.t. a
    db = - np.sum(d)       #derivative of d w.r.t. b 
    return(da,db)
```

```python colab={"base_uri": "https://localhost:8080/", "height": 265} id="IHfAuhav7txB" outputId="fbf69da9-8bdf-4295-a0ee-3b8daf5ff135"
lr = 0.001
epochs = 2000

#step 1
a = np.random.rand()
b = np.random.rand()
params=[a,b]

fig = plt.figure()
plt.plot(x,y,'ro')
line, = plt.plot([], [], lw=2)
```

```python id="1pnPlTj9cB2N"
def init():
    #current approximation
    line.set_data([x[0],x[9]],[a*x[0]+b,a*x[9]+b])
    return line,

def step(i):
    a,b=params
    da,db = grad(a,b)
    if i%100==0:
      print("current loss = {}".format(np.sum((y-a*x-b)**2)))
    params[0] = a - lr*da
    params[1] = b - lr*db
    ##### for animation
    line.set_data([x[0],x[9]],[a*x[0]+b,a*x[9]+b])
    #time.sleep(.01)
    return line,

anim = animation.FuncAnimation(fig, step, init_func=init, frames=epochs, interval=1, blit=True, repeat=False)
```

```python colab={"base_uri": "https://localhost:8080/", "height": 667} id="r_RjFHnNibqz" outputId="1156a1e3-a57e-4cad-9204-22459f43ab53"
anim
```

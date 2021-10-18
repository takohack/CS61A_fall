# Higher-Order Functions

## 函数作为参数
这节课从一个计算面积的例子引入
![](https://cdn.jsdelivr.net/gh/takohack/Picture-update@main/picture/1631329808735-1631329808728.png)

计算它们面积的区别在于前面参数的不同

![](https://cdn.jsdelivr.net/gh/takohack/Picture-update@main/picture/1631329900675-1631329900669.png)
函数area 通过传入shape_constant参数来传入这个参数
* 一个很重要的点是assert 确保了函数传入的参数r>0

下面一个例子是一个求和函数
![](https://cdn.jsdelivr.net/gh/takohack/Picture-update@main/picture/1631330036330-1631330036325.png)

![](https://cdn.jsdelivr.net/gh/takohack/Picture-update@main/picture/1631330147285-1631330147281.png)
* 这里我们定义了一个函数 用于计算cube或更复杂的表达式 它可以作为一个参数 传入表达式
* total每次加上一个term(k)来求和

## 函数作为返回值

第三个例子告诉我们 函数也可以作为返回值

```
def make_adder(n):
    def adder(k):
        return k+n
    return adder


print(make_adder(1)(2))
```
这里make_adder可以返回adder函数 传入的参数n可以用于指明adder函数加几
调用make_adder(1)(2) 先构造adder函数是一个(k+1)函数 再传入2


## lambda表达式
![](https://cdn.jsdelivr.net/gh/takohack/Picture-update@main/picture/1631330556852-1631330556849.png)


## 这节课的Reverse技巧特别牛逼

![](https://cdn.jsdelivr.net/gh/takohack/Picture-update@main/picture/1631330664808-1631330664805.png)

首先我们定义一个函数
```
def search(f):
    x =0
    while not f(x):
        x +=1
    return x
```
这个函数的作用是让我们按传入的函数方式搜索 直到满足传入函数所需的要求

例如 我们定义了一个规则

```
def postive(x):
    return max(0,square(x)-100)
```
当我们传入postive函数 只有当square(x)-100>0 时postive才不会返回0(False),search 才会结束

最后一个例子结合了上述技巧

```
def search(f):
    x = 0
    while not f(x):
        x += 1
    return x


def square(x): return x*x


def inverse(f):
    return lambda y: search(lambda x: f(x) == y)


sqrt = inverse(square)
print(sqrt(256))
```

试着理解这个inverse

```
def sqrt(y):
    def is_sqrt_of_y(x):
        return square(x) == y
    return search(is_sqrt_of_y)
```
* 我们定义了一个sqrt函数 如何找y的根号 我们定义了一个查找方式 is_sqrt_y 只有当x^2 == y 时返回true

更进一步

```
def inverse(f):
    def inverse_of_f(y):
        def is_inverse_of_y(x):
            return f(x) == y
        return search(is_inverse_of_y)
    return inverse_of_f

def inverse(f):
    return lambda y: search(lambda x: f(x) == y)
```

* 两种表达方式等价 第二种的意思是inverse返回一个函数 对于每个参数y 返回search x 返回值 x的查找方式是通过1个lambda表达式定义的(f(x) == y)
# Variables & Functions, Control
## Textbook

###  1.1   Getting Started
1.1节简单介绍了一下python的基础知识

### 1.2   Elements of Programming
1. 书1.2节介绍了Python表达式 调用函数传参
 比较有意思的点是函数的递归调用(expression Tree)
![](https://cdn.jsdelivr.net/gh/takohack/Picture-update@main/picture/1631242311247-1631242311242.png)
2. The Non-Pure Print Funtion 运行会产生额外的影响 例如Print
![](https://cdn.jsdelivr.net/gh/takohack/Picture-update@main/picture/1631242509246-1631242509242.png)

### 1.3   Defining New Functions
1. 由前面两节的学习我们已经了解了任何编程语言都具有的一些特性
* 变量和数值运算
* 嵌套函数提供了组合操作的手段
* 名称到值的绑定提供了有限的抽象手段。
2. 本节介绍了函数定义的相关知识 最重要的是引入了环境(Environments)这一概念来讨论函数
![](https://cdn.jsdelivr.net/gh/takohack/Picture-update@main/picture/1631243045916-1631243045914.png)
(全局域 函数内部域)

3. 函数抽象的概念(Aspects of a functional abstraction.)
* domain 函数自变量的取值范围
* range 函数返回值的范围
* intent 函数对输入进行运算并输出(以及他可能产生的副作用)

4. 操作数(Operators) 这里我的理解是(2+3*4+5)下面函数调用的顺序是先计算Mul 返回值计算add,返回值再调用add
![](https://cdn.jsdelivr.net/gh/takohack/Picture-update@main/picture/1631243468836-1631243468835.png)



### 1.4 Designing Functions
1. 函数设计的三个要素
* 每个函数应该只有一个精确的任务 执行多个任务的函数应该被拆分为多个函数
* 不要重复自己(DRY principle) 如果你发现自己在复制粘贴一段代码 你可能已经发现了一个机会用函数抽象
![](https://cdn.jsdelivr.net/gh/takohack/Picture-update@main/picture/1631243863359-1631243863356.png)

2. Python 文档以及测试

### 1.5   Control
1. 函数需要有return返回值 遇到return便会结束函数
2. 语句块会顺序执行 直到遇到return或Control
3. if elif else
4. Boolean values(在lab1会详细训练)
5. while循环

## Dart语言学习记录

#### 前言
开始使用Flutter开发Android和iOS的APP,发现有时候Dart语法不熟悉，导致思考起来很费劲，
还是那句话：基础不牢，地动山摇.回去学习Dart的基础
#### 学习的权威资料
官网: [Dart的官网Docs文档](https://dart.dev/guides)

#### 变量
程序＝算法+数据．数据怎么存储，只能是通过变量，Dart本身提供的类型和自己在这些个基本类型之上
组建的复杂类型．不过Dart对变量的定义有点纯粹
```
Everything you can place in a variable is an object, and every object is an instance of a class. 
Even numbers, functions, and null are objects. 
All objects inherit from the Object class.

意思就是：Dart一视同仁，不像Java这种语言还对变量类型分三六九等，什么基本类型和引用类型，Dart
是一铲子全给你磨平了，大家平等，在Dart这个王国里，只有对象(就是Java所谓的引用类型).大家都是同等
待遇的国民.
```
### Variables(变量)
1. 你有三种方式定义一个变量
```
var name = 'Blob';//类型推断:type infer 类似于Java9推出来的var关键字

dynamic name = 'Blob';//dynamic关键字有点复杂

String name = 'Blob';//指名道性的指名类型，毫无争议，编译器和执行器也省事
```

2. Dart中的变量默认值
```
如果不初始化，那么都是:null.没有特殊，没有例外．
```

3. Final And Const:常量
```
 A final variable can be set only once; 
 a const variable is a compile-time constant. (Const variables are implicitly final.) 
 A final top-level or class variable is initialized the first time it’s used.
 
 翻译过来就是：一个final便来嗯只能被赋值一次，
 一个const变量必须是编译期就知道赋值的数据
 一个final顶级或者类变量只会在使用的时候初始化一次
```

final 和　const都是赋值一次之后后面都不能变化，但是const是在编译的时候就必须确定，换句话来说
const类似于cpp的inline关键字，就是一个替换或者是简单计算而已，但是final就是运行时就可以了
例如，我想获取一个当前机器的cpu的核数，这个只能使用final,不能使用const
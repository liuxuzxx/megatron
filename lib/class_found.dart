///
/// class 的found试验场
/// .. 级联调用操作，也就是免除一个连续的使用对象的调用方法
///

class HtmlParser {
  void loadHtml(Uri htmlUri) {
    print('Loading the uri address:${htmlUri.toString()}');
  }

  void parse(String content) {
    print('We starting parse the html content:${content}');
  }
}

///
/// 语法糖，因为Router这种设置太普遍了，然后有个syntactic sugar:语法糖
///
class Router {
  String urlPath;
  int key;

  Router(this.urlPath, this.key);

  Router.origin() {
    urlPath = 'This is Origin Router!';
    key = -1;
  }

  String toString() {
    return urlPath;
  }
}

class Person {
  Person(int age) {
    print('Person super constructors!');
  }
}

class Employee extends Person {
  Employee(String userName):super(9) {
    print('Emplyee constructors!');
  }
}

///
///总体来看，Dart就是一个翻版的C++语言，重写运算符号，各种多继承，和关键字的设置
///想融入，有点不太适应
///

class MiddleListener{
  int order;
  String Function(DateTime date) interceptor;

  MiddleListener({this.order,this.interceptor});
}
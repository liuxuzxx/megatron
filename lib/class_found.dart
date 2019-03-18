///
/// 探索class的定义
///

class UserDto {
  int userId;
  String userName;
  String password;
  DateTime birthday;

  UserDto({this.userId, this.userName, this.password, this.birthday});

  static UserDto initialUserDto() {
    return UserDto(
        userId: -1,
        userName: 'Anonymous',
        password: 'anonymous',
        birthday: DateTime.now());
  }
}

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

///
/// 首先，Dart的构造方法分成两种：Default的和named的形式。
/// 如果是默认的构造方法，那么就只能有一个，但是named的形式的构造方法，可以有无数个
/// 还有，子类继承的时候，构造方法，无论是default的还是named的，都必须选择继承一个父类的构造方法
///
class Person {
  int age;

  Person(int age) {
    print('Person super constructors!');
    this.age = age;
  }

  Person.origin() {
    age = -1;
  }
}

class Employee extends Person {
  Employee(String userName) : super.origin() {
    print('Emplyee constructors!$age');
  }

  Employee.origin() : super.origin() {}
}

///
///总体来看，Dart就是一个翻版的C++语言，重写运算符号，各种多继承，和关键字的设置
///想融入，有点不太适应
///

class MiddleListener {
  int order;
  String Function(DateTime date) interceptor;

  MiddleListener({this.order, this.interceptor});
}

///
/// 尝试下最基本的类的使用
///
class ClueDto {
  int clueId;
  String userName;
  DateTime createTime;

  ClueDto({this.clueId, this.userName, this.createTime});

  ClueDto.origin() {
    clueId = 0;
    userName = 'Anonymous';
    createTime = DateTime.now();
  }

  ClueDto.append() {
    clueId = 90;
  }
}

enum ResourceFileType { css, html, js }

class CrawlerResource {
  Uri resourceUri;
  String Function(ResourceFileType type) handler;

  CrawlerResource({this.resourceUri, this.handler});

  String parse(ResourceFileType type){
    return handler(type);
  }
}

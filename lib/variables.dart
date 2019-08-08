//使用Dart语言的注释内容信息
///
/// 多行注释的使用
///

//1.Default value 就是变量的初始化和赋值操作

///var类似于Java的类型推断，type infer
///这句话等同于 String name = 'Blob';
var name = 'Blob';
String userName = 'LiuXu';
dynamic dynamicName = 'Dynamic_Name';

void logNameType() {
  print('The name type is:${name.runtimeType}');
  print('The userName type is:${userName.runtimeType}');
  print('The dynamicName type is:${dynamicName.runtimeType}');
}

///
/// 当你没有给一个变量初始化的时候，这个变量是null,不管是什么类型
/// 也就是一句话:Dart里面全是对象，ｉ不初始化就是null，这个理论很清楚
///

int lineCount;
bool flag;

void logNullVariable() {
  print('The Null is:${lineCount == null}');
  print('The flag is:${flag == null}');
}

//2.Final and const 最终和常量数据

final String systemName = '';

void changeSystemName() {}

///
/// class里面的const变量必须加static,想想也是啊
/// const直接就给定死了，然后class的instance也改变不了
/// 不如加上static,大家都鞥访问,占用的内存还少
///
class AccountResult {
  final String accountName;
  static const int age = 10;

  AccountResult({this.accountName});
}

//const可以修饰变量，也可以修饰values
///
/// 只能这么理解了:const修饰的变量赋值的数值也是常量
///
var foo = const [1, 2, 3];
const baz = [1,2,5];
var temp = baz;

void changeConst() {
}

///
/// 总体而言，只有final和const比较不是多么的好理解之外，其他都很好
///
///
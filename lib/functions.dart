String applicationName = 'Android';

bool isNobel() {
  return true;
}

///
/// 有点像是JavaScript的Lambda表达式的写法
///
String fetchBeastName() => 'Megatron Drong';

///
/// found Flutter的Widget的参数传入
/// @required 这个注解可能是只有Dart的Web才有，所以，引入的时候出现报错找不到这个注解
///
///

void checkEmpty({String key, DateTime date}) {
  print(key);
  print(date.toString());
}

void optionalSay(String application, [String device]) {
  String message = 'This is the:$application';
  if (device != null) {
    message = '$message and the device is:$device';
  }
  print(message);
}

///
/// 可以给出来默认值，但是上面这个optional只能是单个，我以为是个数组或者是List对象可选参数
/// 不过默认参数值只能是const的
///
void defaultSay({String application = 'Android', DateTime date}) {
  print(application);
  print(date.toString());
}

List<String> platform = ['Linux', 'Windows', 'Android', 'iOS'];

void anonymousIterator() {
  platform.forEach((plat){
      print(plat);
      print('Print the platform');
  });
}
///
/// All functions return a value. If no return value is specified, the statement return null; is implicitly appended to the function body.
/// 这么看所有的Function都会return一个对象，如果没有return语句，那么就return一个null就行
///

///
/// 这个和JavaScript或者是和c，cpp差不多，都是使用一种函数指针的东西，内部肯定是这个原理
/// 然后Java引入的Lambda表达式也是这个原理
///
void logCount(int number){
  print('This is :${number}');
}

List<int> numbers = [1,2,4,9,0];

void printDetails(){
  numbers.forEach(logCount);
}
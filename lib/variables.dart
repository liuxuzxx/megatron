///
/// Dart的变量
///

var count = 90;
var applicationName = "Smart Rattrap!";
String applicationKey = 'adjj9a9erdjfaer89d9f9ae9r';
dynamic createTime = DateTime.now();

void showApplicationName(){
  print(applicationName);
}

void showApplicationKey(){
  print(applicationKey);
}

void showNow(){
  print(createTime);
}

int lineCount;

void assertVariable(){
  print('Assert the lineCount object!');
  assert(lineCount==null);
}

/**
 * final和const的区别：final是必须初始化，const是必须compile-time确定
 * 二者在runtime的时候，都不能被改变
 * 但是compile-time的时候是不会运行，所以，所有从代码获取的数据都不能赋值给const变量
 */
final createTimeFinal = DateTime.now();
const updateTimeConst = '2019-03-11';

///
/// 可以这么理解：const什么都不加：那就是正常的变量，没有任何限制
/// 如果是加了const给赋值方，那么赋值方会被编译成一个匿名的变量，因为实在编译器搞定数据
/// 所以必须是常量，编译常量。如果是const加到定义的变量，那么就必须是双方都是const的
/// 毕竟const的变量是在compile-time的时候确定
/// 等号两边都可以看做是变量，只不过右边是匿名变量而已
///
List<String> googleMail = ['google',DateTime.now().toString()];
List<String> fox = const ['2019','2020'];
const List<String> foxMail = ['2021-06-30',updateTimeConst];
final List<String> github = [DateTime.now().toString()];

void changeVarConst(){
  googleMail = [];
  googleMail.add('182');
  fox = ['2029'];
  fox.add('adfasdf');
  foxMail.add('adfasd');
}

///
/// 奇怪啊，Dart2.1竟然不支持Set，Dart2.2支持Set的这种写法了
///
Set<String> halogens = {'fluorine', 'chlorine', 'bromine', 'iodine', 'astatine'};

Set<String> userIds = <String>{};

void addSet(){
  userIds.add('userId_1');
  userIds.addAll(halogens);
}

List<Map<String,String>> language = [{'name':'cpp'},{'name':'Java'},{'name':'ReactJS'}];


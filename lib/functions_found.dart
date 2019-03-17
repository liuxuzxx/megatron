import 'package:megatron/class_found.dart' as class_found;


///
/// Dart函数的探索，一定要弄明白
///

///
/// 基本的传递参数没有任何问题，很好理解，和Java或者是其他语言大茶不差
///
void logInformation(String userName,[int age]) {
  print('最基本的传入参数，打印参数数据信息:$userName');
}

///
/// 这种Optional的函数参数形式很相似一个Map对象用来存储我们的参数，当你传递参数的时候
/// 我给你放置到一个Map对象当中去了，之后，我们就可以进行赋值了
/// 如果使用这种位置就不能使用名字了
/// 两种传递参数的方式:named parameters || positional parameters
/// 我们一般编程常见的就是后面那个：按照你写的顺序传递参数
///
String optionalArgument({DateTime createTime,String creator}){
  return 'Return a String value!';
}

///
/// 下面验证，可选的参数，其实最近新的语言都是具有这两种语言特性的
///

class_found.UserDto generatorUser(String userName,String password,[int userId,DateTime birthday]){
  return class_found.UserDto.initialUserDto();
}

///
/// 一旦可选参数写上了，那么这个可选参数一定是放置到最后了， 然后，这个可选参数后面不能再写其他参数了(不管可选还是不可选)
/// 反正可选参数和非可选参数之间一个鸿沟
///
class_found.UserDto optionParameter(String userName,[int userId]){
  return class_found.UserDto.initialUserDto();
}
///
/// 其实name position参数的写法就是可选了，只不过在Flutter当中可以加入@required注解表示一定需要就行了
///
class_found.UserDto optionNameParameters({String userName,String password}){
  return class_found.UserDto.initialUserDto();
}


void nameDefaultValue({String userName='liuxu',bool flag=false}){
  print('The falg:$flag userName is:$userName');
}

void positionDefaultValue(String userName,int userId,{bool flag=false,String password}){
  print('The userName:$userName of password:$password');
}

void positionDefaultValues(String userName,[int userId=0]){
  print(userId);
}

///
/// Optional parameters can be either positional or named, but not both.
/// 这句话翻译过来就是：可选参数可以是位置参数形式，也可以是名字参数形式，但是不能同时具备。
/// 总体来说，Dart语言定义函数的时候，参数的传递有两种方式：一种是位置确定，一种是名字确定参数。
/// 英文表达就是：name and positional parameters!
/// 之后接着就是可选参数的情况，positional parameters形式需要加入一个中括号，里面确实可选参数，这个倒是
/// 好理解，毕竟：很多语言都是position parameters:所以可选的一定需要自己写明白
/// 但是name parameters就是只要你不写@required注解，都是可选参数
/// 对于default形式：首先这个默认值的意思就是你不传递，就给你一个default的value。
/// 所以这个肯定是相对于可选参数来说的，如果是不可选，必须传递的参数，不会窜在default默认值一说。
/// 然后，下面，就好操作了。本身，name parameters就是可选的，所以可以作为default的传递，当然position parameters也
/// 具有可选的形式，那么也是可以传递参数值。
/// 上面那句话的意思是：可选参数只能是按照名字或者是按照位置的其中一种形式.
///
///

void doStuff({
  List<String> names = const ['liuxu','zhongxiaoxia','xiaoxu'],
  Map<String,int> birthdays = const {
    'liuxu':28,
    'zhongxiaoxia':27,
    'xiaoxu':1
  }
}){
  print('The user name is :$names');
  print('The user''s birthday is :$birthdays');
}
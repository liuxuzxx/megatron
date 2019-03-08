///
/// Dart的方法，你给返回值也行，不写也可以，void类型是可以省略
/// 返回类型
/// 其他返回类型也可以省略返回类型，不过按照好习惯，我觉得还是要写上返回类型
/// 我猜测啊，这个void可能在Dart看来就是一种Object，毕竟Dart是全面向对象的语言

void printLog(){
  print('打印一个具体信息类型的日志!');
}

String typeName(){
  return '增加类型';
}
///
/// Dart的asynchrony support  异步支持
///和Java8提供的CompletableFuture很相似，完成了基本所有的流程性质的多线程异步操作
///

Future<String> lookUpVersion() async => '1.0.0';

Future<DateTime> loadMenu() async {
  String version = await lookUpVersion();
  print(version);
  print('异步函数执行');
  return DateTime.now();
}

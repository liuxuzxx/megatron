import 'package:megatron/megatron.dart' as megatron;
import 'package:megatron/action_type.dart' as action_type;

main(List<String> arguments) {
  print('Hello world: ${megatron.calculate()}!');
  action_type.printLog();
  String typeName = action_type.typeName();

  print('获取到的类型内容:${typeName}');
}

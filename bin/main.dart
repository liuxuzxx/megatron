import 'package:megatron/megatron.dart' as megatron;
import 'package:megatron/action_type.dart' as action_type;
import 'package:megatron/variables.dart' as variables;
import 'package:megatron/functions_found.dart' as functions_found;

void main(List<String> arguments) {
  print('Hello world: ${megatron.calculate()}!');
  action_type.printLog();
  String typeName = action_type.typeName();

  print('获取到的类型内容:${typeName}');

  variables.showApplicationName();
  variables.showApplicationKey();
  variables.showNow();
  variables.assertVariable();

  functions_found.logInformation('柳絮');

  String loginValue = functions_found.optionalArgument(creator: 'liuxu');
  print(loginValue);

  var userDto = functions_found.generatorUser('liuxu', 'lxzxx');
  print(userDto.userName);

  functions_found.nameDefaultValue(userName: 'lzxx');

  functions_found.positionDefaultValue('liuxu',90,password: 'lxzxx');

  functions_found.doStuff();
}

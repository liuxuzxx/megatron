import 'package:megatron/megatron.dart' as megatron;
import 'package:megatron/action_type.dart' as action_type;
import 'package:megatron/variables.dart' as variables;
import 'package:megatron/functions.dart' as functions;
import 'package:megatron/class_found.dart' as class_found;
import 'package:megatron/asynchrony_support.dart' as asynchronous_support;
import 'package:megatron/functions_found.dart' as functions_found;

main(List<String> arguments){
  print('Hello world: ${megatron.calculate()}!');
  action_type.printLog();
  String typeName = action_type.typeName();

  print('获取到的类型内容:${typeName}');

  variables.showApplicationName();
  variables.showApplicationKey();
  variables.showNow();
  variables.assertVariable();
  variables.addSet();
  bool flag = functions.isNobel();
  print(flag);
  print(functions.fetchBeastName());
  functions.checkEmpty(key: 'checkKey', date: DateTime.now());

  functions.optionalSay('Linux');
  functions.defaultSay(date: DateTime.now(), application: 'Linux');
  functions.anonymousIterator();
  functions.printDetails();

  class_found.HtmlParser htmlParser = class_found.HtmlParser()
    ..loadHtml(Uri.file('F:/'))
    ..parse('<head></head>');

  var router = class_found.Router('http://www.baidu.com',90);
  print(router.toString());
  var originRouter = class_found.Router.origin();
  print(originRouter.toString());

  var employee = class_found.Employee('');

  Future<DateTime> future = asynchronous_support.loadMenu();
  future.then((value)=>print(value));

  class_found.MiddleListener(order:9,interceptor:(DateTime date){
    print('打印数据信息');
    return DateTime.now().toString();
  });

  functions_found.logInformation('柳絮');

  String loginValue = functions_found.optionalArgument(creator: 'liuxu');
  print(loginValue);

  var userDto = functions_found.generatorUser('liuxu', 'lxzxx');
  print(userDto.userName);

  functions_found.nameDefaultValue(userName: 'lzxx');

  functions_found.positionDefaultValue('liuxu',90,password: 'lxzxx');

  functions_found.doStuff();
}

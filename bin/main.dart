import 'package:megatron/built_in_types.dart';
import 'package:megatron/megatron.dart' as megatron;
import 'package:megatron/variables.dart';

void main(List<String> arguments) {
  print('Hello world: ${megatron.calculate()}!');

  logNameType();
  logNullVariable();
  changeConst();
  logVariableType();
  logListType();
}

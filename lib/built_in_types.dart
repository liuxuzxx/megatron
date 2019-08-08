///
/// 先定义个8大类型
///

void logVariableType() {
  //String--->int
  var one = int.parse('1');
  print('One value is:${one}');
  //int-->String
  var string = 2.toString();

  ///
  /// 这集中定义字符串的形式都不错，值得学习啊
  ///
  var s1 = 'String '
      'concatenation'
      " works even over line breaks.";
  assert(s1 ==
      'String concatenation works even over '
          'line breaks.');

  var s2 = 'The + operator ' + 'works, as well.';
  assert(s2 == 'The + operator works, as well.');
  var s3 = '''
You can create
multi-line strings like this one.
''';

  var s4 = """This is also a
multi-line string.""";

  var s = r'In a raw string, not even \n gets special treatment.';
}

void logListType(){
  var users  = [1,2,3,null];
  users[2] =90;
  ///
  /// Dart2.3引入了一个新语法
  /// ... 应该理解成舒缓的意思
  ///
  var allUsers = [9,...?users];
  print('Spread value is:${allUsers}');

  var detections = <String>[];
  List<String> clues = [];

  var numbers = <DateTime>{};
  Set<String> ids = {};

  //set的定义形式
  var halogens = {'fluorine', 'chlorine', 'bromine', 'iodine', 'astatine'};

  var gifts = {
    // Key:    Value
    'first': 'partridge',
    'second': 'turtledoves',
    'fifth': 'golden rings'
  };

  var nobleGases = {
    2: 'helium',
    10: 'neon',
    18: 'argon',
  };

  var typeAccount = Map();
  Map<int,DateTime> birthdays = Map<int,DateTime>();

  var clapping = '\u{1f44f}';
  print(clapping);
  print(clapping.codeUnits);
  print(clapping.runes.toList());

  Runes input = new Runes(
      '\u2665  \u{1f605}  \u{1f60e}  \u{1f47b}  \u{1f596}  \u{1f44d}');
  print(new String.fromCharCodes(input));
}

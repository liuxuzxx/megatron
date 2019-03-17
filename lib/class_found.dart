///
/// 探索class的定义
///

class UserDto {
  int userId;
  String userName;
  String password;
  DateTime birthday;

  UserDto({this.userId, this.userName, this.password, this.birthday});

  static UserDto initialUserDto(){
    return UserDto(userId: -1,userName: 'Anonymous',password: 'anonymous',birthday: DateTime.now());
  }
}

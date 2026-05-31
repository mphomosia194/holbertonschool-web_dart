import '6-password.dart';

class User extends Password {
  int? id;
  String? name;
  int? age;
  double? height;
  String? user_password;

  User({
    this.id,
    this.name,
    this.age,
    this.height,
    this.user_password,
  }) : super(password: user_password);

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'age': age,
      'height': height,
    };
  }

  static User fromJson(Map<dynamic, dynamic> userJson) {
    return User(
      id: userJson['id'],
      name: userJson['name'],
      age: userJson['age'],
      height: userJson['height'],
      user_password: userJson['user_password'],
    );
  }

  @override
  String toString() {
    password = user_password;

    return 'User(id : ${id ?? 0} ,name: ${name ?? ""}, age: ${age ?? 0}, height: ${height ?? 0.0}, Password: ${isValid()})';
  }
}


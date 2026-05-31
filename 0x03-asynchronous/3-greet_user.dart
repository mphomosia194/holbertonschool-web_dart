import 'dart:convert';
import '3-util.dart';

Future<String> greetUser() async {
  try {
    final userData = await fetchUserData();
    final user = jsonDecode(userData);

    return 'Hello ${user['username']}';
  } catch (error) {
    return 'error caught: $error';
  }
}

Future<String> loginUser() async {
  try {
    bool hasUser = await checkCredentials();

    print('There is a user: $hasUser');

    if (hasUser) {
      return await greetUser();
    }

    return 'Wrong credentials';
  } catch (error) {
    return 'error caught: $error';
  }
}

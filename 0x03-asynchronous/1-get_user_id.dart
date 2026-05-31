import 'dart:convert';
import '1-util.dart';

Future<String> getUserId() async {
  final userData = await fetchUserData();
  final user = jsonDecode(userData);
  return user['id'];
}

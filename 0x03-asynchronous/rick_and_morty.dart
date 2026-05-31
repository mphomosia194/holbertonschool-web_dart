import 'dart:convert';
import 'package:http/http.dart' as http;

Future<void> printRmCharacters() async {
  try {
    final response = await http.get(
      Uri.parse('https://rickandmortyapi.com/api/character'),
    );

    final data = jsonDecode(response.body);

    for (var character in data['results']) {
      print(character['name']);
    }
  } catch (error) {
    print('error caught: $error');
  }
}

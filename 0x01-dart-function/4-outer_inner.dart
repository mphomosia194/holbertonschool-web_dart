void outer(String name, String id) {
  String inner() {
    List<String> names = name.split(' ');
    return 'Hello Agent ${names[1][0]}.${names[0]} your id is $id';
  }

  print(inner());
}

class Password {
  String? password;

  bool isValid() {
    if (password == null) {
      return false;
    }

    RegExp upperCase = RegExp(r'[A-Z]');
    RegExp lowerCase = RegExp(r'[a-z]');
    RegExp number = RegExp(r'[0-9]');

    return password!.length >= 8 &&
        password!.length <= 16 &&
        upperCase.hasMatch(password!) &&
        lowerCase.hasMatch(password!) &&
        number.hasMatch(password!);
  }

  @override
  String toString() {
    return 'Your Password is: $password';
  }
}

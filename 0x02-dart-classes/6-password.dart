class Password {
  String? _password;

  Password({String? password}) : _password = password;

  String? get password => _password;

  set password(String? password) {
    _password = password;
  }

  bool isValid() {
    if (_password == null) {
      return false;
    }

    RegExp upperCase = RegExp(r'[A-Z]');
    RegExp lowerCase = RegExp(r'[a-z]');
    RegExp number = RegExp(r'[0-9]');

    return _password!.length >= 8 &&
        _password!.length <= 16 &&
        upperCase.hasMatch(_password!) &&
        lowerCase.hasMatch(_password!) &&
        number.hasMatch(_password!);
  }

  @override
  String toString() {
    return 'Your Password is: ${_password ?? ""}';
  }
}

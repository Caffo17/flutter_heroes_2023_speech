typedef Validator = bool Function(dynamic v);

class CommonValidatorDelegate {
  static final RegExp _emailRegex = RegExp(
    r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+",
  );

  static bool isEmailValid(String? email) {
    if (email == null) return false;

    return _emailRegex.hasMatch(email);
  }

  static bool validateType<T>(dynamic v, {required bool Function(T?) validate}) {
    if (v is! T?) return false;

    return validate(v);
  }

  static bool fallbackValidate(dynamic v) => true;

  static const String fallbackErrorMessage = 'must be not empty';
}

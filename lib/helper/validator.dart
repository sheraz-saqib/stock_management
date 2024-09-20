String? emailValidator(String? val) {
  RegExp emailRegex =
      RegExp(r"^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}$");

  if (val == null || val.isEmpty) {
    return 'Pleasee enter an email address'; // Error: Empty input
  } else if (!emailRegex.hasMatch(val)) {
    return 'Enter a valid email address'; // Error: Invalid email format
  }

  return null; // Valid email, no error
}

String? fieldValidator(dynamic val) {
  if (val == null || val.isEmpty) {
    return 'This field is required'; // Error: Empty input
  }
  return null; // Valid email, no error
}

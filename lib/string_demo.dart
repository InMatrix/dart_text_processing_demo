String skipLastChar(String text) {
  return text.substring(0, text.length - 1);
}

bool validateEmail(String email) {
  return email.contains(new RegExp(r'.+@.+\.[a-z]*'));
}
import 'package:characters/characters.dart';
import 'package:dart_text_processing_demo/string_demo.dart' as str;

String skipLastChar(String text) {
  return text.characters.skipLast(1).toString();
}

// Use the function implemented using the String API
bool validateEmail(String email) {
  return str.validateEmail(email);
}

// Count the number of characters in the string.
// If the given limit hasn't been reached,
// return the remaining number of characters.
// Otherwise, return the number of overflown characters
// in a negative number.
int checkMaxLength(String input, int limit) {
  var length = input.characters.length;
  return limit - length;
}
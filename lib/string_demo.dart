String skipLastChar(String text) {
  return text.substring(0, text.length - 1);
}

bool validateEmail(String email) {
  return email.contains(new RegExp(r'.+@.+\.[a-z]*'));
}

// Count the number of characters in the string.
// If the given limit hasn't been reached,
// return the remaining number of characters.
// Otherwise, return the number of overflown characters
// in a negative number.
int checkMaxLength(String input, int limit) {
  var length = input.length;
  return limit - length;
}

// Capitalize the first letter of a string
// Note: this function is not grapheme-aware
// String capitalizeFirstLetter(String text) {
//   return text[0].toUpperCase() + text.substring(1);
// }
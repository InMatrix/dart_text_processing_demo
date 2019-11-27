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

// Display additional text overflow as an ellipsis
// when the number of characters exceeds the limit.
String textOverflowEllipsis(String text, int limit) {
  if (text.length > limit) {
    return text.substring(0, limit - 3) + '...';
  } else {
    return text;
  }
}

// Capitalize the first letter of a string
// Note: this function is not grapheme-aware
// String capitalizeFirstLetter(String text) {
//   return text[0].toUpperCase() + text.substring(1);
// }

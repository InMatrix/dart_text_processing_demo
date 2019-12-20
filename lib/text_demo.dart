import 'package:characters/characters.dart';

// This class implements common text processing methods
// using the Dart String API. Some of those methods are
// overriden in the GraphemeSafeTextDemo class in order to
// safely manipulate text that contains grapheme clusters.
class TextDemo {
  // Remove the last character from the text
  String skipLastChar(String text) {
    return text.substring(0, text.length - 1);
  }

  // Check wheather the string looks like a valid email
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

  // Display text overflow as an ellipsis
  // when the number of characters exceeds the limit.
  String textOverflowEllipsis(String text, int limit) {
    if (text.length > limit) {
      return text.substring(0, limit - 3) + '...';
    } else {
      return text;
    }
  }

  // Capitalize the first letter of a string
  String capitalizeFirstLetter(String text) {
    return text[0].toUpperCase() + text.substring(1);
  }

  // Create initials from a full name
  String createInitials(String fullName) {
    var initials = '';
    var names = fullName.split(' ');
    for (var name in names) {
      initials += name[0].toUpperCase();
    }
    return initials;
  }
}

class GraphemeSafeTextDemo extends TextDemo {
  @override
  String skipLastChar(String text) {
    return text.characters.skipLast(1).toString();
  }

  @override
  int checkMaxLength(String input, int limit) {
    var length = input.characters.length;
    return limit - length;
  }

  @override
  String textOverflowEllipsis(String text, int limit) {
    return text.characters.take(limit - 3).toString() + '...';
  }

  @override
  String capitalizeFirstLetter(String text) {
    var chars = text.characters;
    var firstChar = chars.first.toUpperCase();
    var restChars = chars.skip(1);
    return firstChar.toString() + restChars.toString();
  }

  @override
  String createInitials(String fullName) {
    var initials = '';
    var names = fullName.split(' ');
    for (var name in names) {
      initials += name.characters.first.toUpperCase();
    }
    return initials;
  }
}

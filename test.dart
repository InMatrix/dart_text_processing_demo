import 'package:test/test.dart';
import 'package:dart_text_processing_demo/string_demo.dart';

void main() {
  test("skipLastChar(text) removes the last character from the string", () {
    var string = 'Hi 🇩🇰';
    expect(skipLastChar(string), equals('Hi '));
  });

  test("validateEmail(email) checks if the email is likely to be valid", () {
    var email = 'café@';
    expect(validateEmail(email), equals(false));
    email = 'café@google.com';
    expect(validateEmail(email), equals(true));
  });
}

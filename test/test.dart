import 'package:test/test.dart';
import 'package:dart_text_processing_demo/text_demo.dart';

void main() {
  TextDemo td;
  // td = TextDemo();
  td = GraphemeSafeTextDemo();

  test("skipLastChar(text) removes the last character from the string", () {
    var string = 'Hi 🇩🇰';
    expect(td.skipLastChar(string), equals('Hi '));
  });

  test("validateEmail(email) checks if the email is likely to be valid", () {
    var email = 'café@';
    expect(td.validateEmail(email), equals(false));
    email = 'café@google.com';
    expect(td.validateEmail(email), equals(true));
  });

  test('''checkMaxLength(String input, int limit) 
returns how many characters left in the space''', () {
    var input =
        '''Laughter is the sensation of feeling good all over and showing it principally in one place.''';
    var limit = 140;
    expect(td.checkMaxLength(input, limit), equals(49));
    input =
        '''Laughter 😀 is the sensation of feeling good all over and showing it principally in one place.''';
    expect(td.checkMaxLength(input, limit), equals(47));
  });

  test(
      "textOverflowEllipsis(String text, int limit) displays an ellipsis for overflown text",
      () {
    var input = "rhinoceros";
    var limit = 7;
    expect(td.textOverflowEllipsis(input, limit), equals("rhin..."));
  });

  // test("capitalizeFirstLetter(text) capitalizes the first letter of a string", () {
  //   var string = "hello";
  //   expect(capitalizeFirstLetter(string), equals('Hello'));
  //   string = "🇩🇰g̈-connected spaces";
  //   expect(capitalizeFirstLetter(string), equals('🇩🇰g̈-connected spaces'));
  // });
}

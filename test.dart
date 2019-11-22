import 'package:test/test.dart';
import 'package:dart_text_processing_demo/main.dart';

void main() {
  test("skipLastChar(text) removes the last character from the string", () {
    var string = 'Hi 🇩🇰';
    expect(skipLastChar(string), equals('Hi '));
  });
}

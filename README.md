# Dart Text Processing Demo

This repo is set up to demonstrate when it's necessary to use the [Characters](https://pub.dev/packages/characters) package to process text in Dart. The [text_demo.dart](lib/text_demo.dart) file includes implementations of common text manipulation tasks. To check out the demo, use the [test.dart](test/test.dart) file. 

## Examples
| Method Name           | Description                                        | Using String | Using Characters |
| --------------------- | -------------------------------------------------- | ------------ | ---------------- |
| skipLastChar          | Remove the last character from the text            | ⚠️           | ✅                |
| validateEmail         | Check whether the string looks like a valid email | ✅            | N/A              |
| checkMaxLength        | Count the number of characters in the string       | ⚠️           | ✅                |
| textOverflowEllipsis  | Display text overflow as an ellipsis               | ⚠️           | ✅                |
| capitalizeFirstLetter | Capitalize the first letter of a string            | ⚠️           | ✅               |
| createInitials | Create initials from a full name | ⚠️           | ✅               |

⚠️  Grapheme-safe implementation. ✅ Grapheme-safe implementation
## TODOs
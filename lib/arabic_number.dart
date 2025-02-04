import 'numberNaming/number_naming.dart';

class ArabicNumber {
  static final ArabicNumber _instance = ArabicNumber._internal();

  factory ArabicNumber() {
    return _instance;
  }

  ArabicNumber._internal();

  String makeupNumber(
      {required double number,
      String separatorSymbol = " ",
      String decimalSymbol = ".",
      required int numberOfDecimal}) {
    return "";
  }

  String formatNaturalNumber(
      {required int number, String separatorSymbol = " "}) {
    return makeupNumber(number: number.toDouble(), numberOfDecimal: 0);
  }

  String numberToWords(int number, NumberNaming locale) {
    final naming = locale;
    if (number == 0) return naming.units[0];

    List<String> parts = [];
    int chunkCount = 0;

    while (number > 0) {
      int chunk = number % 1000;
      if (chunk > 0) {
        String chunkWords = _convertChunk(chunk, naming);
        String scale = naming.scales[chunkCount];
        parts.insert(0, "$chunkWords ${scale.isNotEmpty ? scale : ''}".trim());
      }
      number ~/= 1000;
      chunkCount++;
    }

    return parts
        .join(" ")
        .replaceAll(RegExp(r'\s+'), naming.hasSpacing ? " " : "");
  }

  String _convertChunk(int number, NumberNaming naming) {
    List<String> words = [];
    int hundred = number ~/ 100;
    int ten = (number % 100) ~/ 10;
    int unit = number % 10;

    if (hundred > 0) {
      words.add("${naming.units[hundred]} ${naming.hundred}");
    }
    if (ten > 1) {
      words.add(naming.tens[ten]);
      if (unit > 0) words.add(naming.units[unit]);
    } else if (ten == 1) {
      words.add(naming.teens[unit]);
    } else if (unit > 0) {
      words.add(naming.units[unit]);
    }

    return words.join(naming.hasSpacing ? " " : "");
  }
}

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
}

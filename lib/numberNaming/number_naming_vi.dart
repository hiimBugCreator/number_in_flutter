import 'number_naming.dart';

class NumberNamingVI extends NumberNaming {
  @override
  List<String> get units =>
      ["không", "một", "hai", "ba", "bốn", "năm", "sáu", "bảy", "tám", "chín"];

  @override
  List<String> get tens => [
    "",
    "mười",
    "hai mươi",
    "ba mươi",
    "bốn mươi",
    "năm mươi",
    "sáu mươi",
    "bảy mươi",
    "tám mươi",
    "chín mươi"
  ];

  @override
  List<String> get teens => [
    "mười",
    "mười một",
    "mười hai",
    "mười ba",
    "mười bốn",
    "mười lăm",
    "mười sáu",
    "mười bảy",
    "mười tám",
    "mười chín"
  ];

  @override
  List<String> get scales =>
      ["", "nghìn", "triệu", "tỷ", "nghìn tỷ", "triệu tỷ", "tỷ tỷ"];

  @override
  String get hundred => "trăm";
}
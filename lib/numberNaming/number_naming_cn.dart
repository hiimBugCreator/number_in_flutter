import 'number_naming.dart';

class NumberNamingCN extends NumberNaming {
  @override
  List<String> get units => ["零", "一", "二", "三", "四", "五", "六", "七", "八", "九"];

  @override
  List<String> get tens =>
      ["", "十", "二十", "三十", "四十", "五十", "六十", "七十", "八十", "九十"];

  @override
  List<String> get teens =>
      ["十", "十一", "十二", "十三", "十四", "十五", "十六", "十七", "十八", "十九"];

  @override
  List<String> get scales => ["", "千", "百万", "十億", "兆", "京", "垓"];

  @override
  String get hundred => "百";

  @override
  bool get hasSpacing => false;
}
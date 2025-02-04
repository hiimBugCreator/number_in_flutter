import 'number_naming.dart';

class NumberNamingJP extends NumberNaming {
  @override
  List<String> get units =>
      ["ゼロ", "いち", "に", "さん", "よん", "ご", "ろく", "なな", "はち", "きゅう"];

  @override
  List<String> get tens => [
    "",
    "じゅう",
    "${units[2]}じゅう",
    "${units[3]}じゅう",
    "${units[4]}じゅう",
    "${units[5]}じゅう",
    "${units[6]}じゅう",
    "${units[7]}じゅう",
    "${units[8]}じゅう",
    "${units[9]}じゅう",
  ];

  @override
  List<String> get teens => [
    "じゅう",
    "じゅう${units[2]}",
    "じゅう${units[3]}",
    "じゅう${units[4]}",
    "じゅう${units[5]}",
    "じゅう${units[6]}",
    "じゅう${units[7]}",
    "じゅう${units[8]}",
    "じゅう${units[9]}",
  ];

  @override
  List<String> get scales =>
      ["", "せん", "ひゃくまん", "じゅうおく"];

  @override
  String get hundred => "ひゃく";

  @override
  bool get hasSpacing => false;
}
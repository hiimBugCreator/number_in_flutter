library number_in_flutter;

import 'package:number_in_flutter/arabic_number.dart';
import 'package:number_in_flutter/roman_numeral.dart';

class NumberInFlutter {
  static final NumberInFlutter _instance = NumberInFlutter._internal();

  factory NumberInFlutter() {
    return _instance;
  }

  NumberInFlutter._internal();

  RomanNumeral get romance => RomanNumeral();

  ArabicNumber get normalNumber => ArabicNumber();
}
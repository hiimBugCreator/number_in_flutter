import 'package:flutter_test/flutter_test.dart';

import 'package:number_in_flutter/number_in_flutter.dart';

void main() {
  test('Largest number', () {
    final numberInFlutter = NumberInFlutter();
    expect(
        numberInFlutter.romance
            .convertRomanceNumberToNaturalNumber(romanceNumber: "MMMCMXCIX"),
        3999);
  });

  test('1977 number', () {
    final numberInFlutter = NumberInFlutter();
    expect(
        numberInFlutter.romance
            .convertRomanceNumberToNaturalNumber(romanceNumber: "MCMLXXVII"),
        1977);
  });

  test('3 number', () {
    final numberInFlutter = NumberInFlutter();
    expect(
        numberInFlutter.romance
            .convertRomanceNumberToNaturalNumber(romanceNumber: "III"),
        3);
  });

  test('Invalid', () {
    final numberInFlutter = NumberInFlutter();
    expect(
        numberInFlutter.romance
            .convertRomanceNumberToNaturalNumber(romanceNumber: "LOC"),
        null);
  });

  test('1997', () {
    final numberInFlutter = NumberInFlutter();
    expect(
        numberInFlutter.romance
            .convertNaturalNumberToRomanceNumber(naturalNumber: 1977),
        "MCMLXXVII");
  });

  test('2008', () {
    final numberInFlutter = NumberInFlutter();
    expect(
        numberInFlutter.romance
            .convertNaturalNumberToRomanceNumber(naturalNumber: 2008),
        "MMVIII");
  });

  test('null', () {
    final numberInFlutter = NumberInFlutter();
    expect(
        numberInFlutter.romance
            .convertNaturalNumberToRomanceNumber(naturalNumber: 8000),
        null);
  });
}

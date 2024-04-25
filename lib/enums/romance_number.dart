/*
 * Product by Louis Vu.
 *
 * This class provide the branch - which is also called (地支) or (十二支).
 * These are twelve words referring to the 12 animals of the Eastern zodiac
 * used to indicate direction, four seasons, day, month, year
 * and hour in the past (equal two hours in modern times).
 *
 * Current allowed systems are: Vietnamese, Chinese, Japanese and Korean.
 *
 * All functions were developed by Louis Vu
 * Following the knowledge on wiki site: https://en.wikipedia.org/wiki/
 *
 * Permission to use, copy, modify, and redistribute this software and its
 * documentation for personal, non-commercial use is hereby granted provided that
 * this copyright notice and appropriate documentation appears in all copies.
 */

///This class provide the branch - which is also called (地支) or (十二支).
///These are twelve words referring to the 12 animals of the Eastern zodiac
enum RomanceNumber {
  i,
  v,
  x,
  l,
  c,
  d,
  m,
  invalid,
}

extension RomanceNumberExtension on RomanceNumber {
  ///Get name of this branch in Vietnamese.
  int get value {
    return switch (this) {
      RomanceNumber.i => 1,
      RomanceNumber.v => 5,
      RomanceNumber.x => 10,
      RomanceNumber.l => 50,
      RomanceNumber.c => 100,
      RomanceNumber.d => 500,
      RomanceNumber.m => 1000,
      RomanceNumber.invalid => 0,
    };
  }

  String get name {
    return switch (this) {
      RomanceNumber.i => "I",
      RomanceNumber.v => "V",
      RomanceNumber.x => "X",
      RomanceNumber.l => "L",
      RomanceNumber.c => "C",
      RomanceNumber.d => "D",
      RomanceNumber.m => "M",
      RomanceNumber.invalid => "Invalid",
    };
  }
}

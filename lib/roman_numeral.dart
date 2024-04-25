import 'enums/romance_number.dart';

class RomanNumeral {
  static final RomanNumeral _instance = RomanNumeral._internal();

  factory RomanNumeral() {
    return _instance;
  }

  RomanNumeral._internal();

  int? convertRomanceNumberToNaturalNumber({required String romanceNumber}) {
    List<RomanceNumber>? lst = _convertFromString(romanceNumber.toUpperCase());
    if (lst != null) {
      int result = 0;
      int? lastIndexValue;
      for (var element in lst) {
        if (lastIndexValue != null && element.value > lastIndexValue) {
          result += (element.value - 2 * lastIndexValue);
        } else {
          result += element.value;
        }
        lastIndexValue = element.value;
      }
      return result;
    } else {
      return null;
    }
  }

  List<RomanceNumber>? _convertFromString(String romanceNumber) {
    List<RomanceNumber> lst = [];
    for (int i = 0; i < romanceNumber.length; i++) {
      lst.add(RomanceNumber.values.firstWhere((e) => e.name == romanceNumber[i],
          orElse: () => RomanceNumber.invalid));
    }
    return (lst.any((element) => element == RomanceNumber.invalid))
        ? null
        : lst;
  }

  String? convertNaturalNumberToRomanceNumber({required int naturalNumber}) {
    if (naturalNumber > 3999) {
      return null;
    }
    List<RomanceNumber> lst = [];
    List<RomanceNumber> listRomance = RomanceNumber.values.reversed.toList();
    listRomance.removeAt(0);
    int temp = 0;
    bool largestIndex = true;
    void add() {
      lst.add(listRomance[0]);
      temp += listRomance[0].value;
    }

    while (temp < naturalNumber) {
      if (listRomance[0].value > naturalNumber - temp) {
        int reduceIndex = (largestIndex) ? 2 : 1;
        int tempMini = listRomance[0].value - listRomance[reduceIndex].value;
        if (tempMini <= naturalNumber && temp + tempMini <= naturalNumber) {
          temp += tempMini;
          lst.add(listRomance[reduceIndex]);
          lst.add(listRomance[0]);
        } else {
          listRomance.removeAt(0);
          largestIndex = !largestIndex;
        }
      } else if (listRomance[0].value == naturalNumber) {
        add();
      } else {
        var pow = 3;
        while (listRomance[0].value * pow > naturalNumber - temp) {
          pow--;
        }
        while (pow > 0) {
          pow--;
          add();
        }
      }
    }
    return lst.map((e) => e.name).toList().join();
  }
}

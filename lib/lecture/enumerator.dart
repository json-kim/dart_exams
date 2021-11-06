void main() {
  Enumerator enumerator = Enumerator();
  print(enumerator.checkGoodNumbers('4444'));
  print(enumerator.checkGoodNumbers('3335'));
}

class Enumerator {
  String checkGoodNumbers(String numbers) {
    var isGoodNumbers = true;

    for (int i = 0; i < numbers.length - 1; i++) {
      isGoodNumbers = isGoodNumbers && numbers[i] == numbers[i + 1];
    }

    return isGoodNumbers ? numbers : 'No';
  }
}
import 'dart:math';
import 'dart:io';

void main() {
  print('5개의 수를 입력하세요.');

  List<int> inputNumbers = [];
  for (int i = 0; i < 5; i++) {
    inputNumbers.add(int.parse(stdin.readLineSync()));
  }

  Numbers numbers = Numbers(inputNumbers);

  print('최대 값 : ${numbers.maxNumber()}');
  print('최소 값 : ${numbers.minNumber()}');
}

class Numbers {
  List<int> numbers;

  Numbers(this.numbers);

  int maxNumber() {
    // 최대 값 리턴
    return numbers.reduce((maxNum, e) => max(maxNum, e));
  }

  int minNumber() {
    // 최소 값 리턴
    return numbers.reduce((minNum, e) => min(minNum, e));
  }
}
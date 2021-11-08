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
    int maxNum = numbers[0];

    for (int n in numbers) {
      maxNum = max(maxNum, n);
    }

    return maxNum;
  }

  int minNumber() {
    // 최소 값 리턴
    int minNum = numbers[0];

    for (int n in numbers) {
      minNum = min(minNum, n);
    }

    return minNum;
  }
}
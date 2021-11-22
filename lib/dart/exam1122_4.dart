import 'dart:convert';
import 'dart:io';

void main() {
  int input = int.parse(stdin.readLineSync(encoding: utf8));

  NumberChecker numberChecker = NumberChecker();

  if (numberChecker.check(input)) {
    print(input);
  } else {
    print('No');
  }
}

class NumberChecker {
  bool check(int num) {
    bool result = num.toString().split('').toSet().length == 1;

    return result;
  }
}
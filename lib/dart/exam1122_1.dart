import 'dart:convert';
import 'dart:io';

void main() {
  final input = stdin.readLineSync(encoding: utf8).split(' ');
  int N = int.parse(input[0]);
  int M = int.parse(input[1]);

  Checker checker = Checker();
  if (checker.check(N, M)) {
    print('YES');
  } else {
    print('NO');
  }

}

class Checker {
  bool check(int N, int M) {
    bool result = N % 2 != M % 2;

    return result;
  }
}
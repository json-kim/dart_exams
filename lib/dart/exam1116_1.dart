import 'dart:convert';
import 'dart:io';

void main() {
  List<String> input = stdin.readLineSync(encoding: utf8).split(' ');
  int n = int.parse(input[0]);
  int m = int.parse(input[1]);

  Checker checker = Checker();

  if (checker.check(n, m)) {
    print('YES');
  } else {
    print('NO');
  }
}

class Checker {
  bool check(int n, int m) {
    // 짝홀, 홀짝 => true / 짝짝 홀홀 => false
    bool result = n.isEven != m.isEven;

    return result;
  }
}
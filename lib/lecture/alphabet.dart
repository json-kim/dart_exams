import 'dart:math';

void main() {
  Random random = Random();
  Alphabet alphabet = Alphabet();

  for (int i = 0; i < 10; i++) {
    String alpha = Alphabet.alphabet[random.nextInt(26)];
    print('$alpha : ${alphabet.getIndexOfAlphabet(alpha)}');
  }
}

class Alphabet {
  static const alphabet = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ';

  int getIndexOfAlphabet(String alpha) {
    // 입력 알파벳이 몇번쨰 알파벳인지 나타내는 정수값을 리턴
    return alphabet.indexOf(alpha) + 1;
  }
}
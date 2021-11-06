import 'dart:math';

void main() {
  Random random = Random();

  for (int i = 0; i < 10; i++) {
    String alpha = Alphabet.alphabet[random.nextInt(27)];
    print('$alpha : ${Alphabet.getIndexOfAlphabet(alpha)}');
  }
}

class Alphabet {
  static const alphabet = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ';

  static int getIndexOfAlphabet(String alpha) {
    // 입력 알파벳이 몇번쨰 알파벳인지 나타내는 정수값을 리턴
    return alphabet.indexOf(alpha) + 1;
  }
}
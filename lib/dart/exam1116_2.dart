import 'dart:io';

void main() {
  List<int> cards = [];
  for (int i = 0; i < 4; i++) {
    int input = int.parse(stdin.readLineSync());
    cards.add(input);
  }

  Card card = Card();
  print(card.getLastCard(cards));
}

class Card {
  int getLastCard(List<int> cards) {
    // 1*2*3*4*5 = 120 에서 4개의 숫자를 나누기한 결과 반환
    int lastCard = 120 ~/ cards.reduce((a, b) => a * b);

    return lastCard;
  }
}

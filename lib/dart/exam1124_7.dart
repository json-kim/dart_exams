import 'dart:io';
import 'dart:convert';

void main() {
  List<String> input = stdin.readLineSync(encoding: utf8).split(' ');
  List<int> nums = input.map((s) => int.parse(s)).toList();

  Card card = Card(cardList: nums);
  print(card.getMaxSum());
}

class Card {
  List<int> cardList;

  Card({this.cardList});

  int getMaxSum() {
    cardList.sort();
    int sumOnes = cardList.sublist(0, 2).reduce((a, b) => a + b);
    int sumTens = cardList.sublist(2, 4).reduce((c, d) => c + d);

    return sumTens * 10 + sumOnes;
  }
}
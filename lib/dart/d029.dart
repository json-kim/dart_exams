void main() {
  Dice dice = Dice();

  for(int i = 1; i < 7; i++) {
    print('$i : ${dice.getOppositeNumber(i)}');
  }
}

class Dice {
  int getOppositeNumber(int num) {
    return 7 - num;
  }
}
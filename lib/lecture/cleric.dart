import 'dart:math';

class Cleric {
  // Field (Property)
  String name;
  int hp;
  int mp;

  static const int maxHp = 50;
  static const int maxMp = 10;

  // Constructor
  Cleric(this.name, {this.hp = maxHp, this.mp = maxMp});

  // Method
  void selfAid() {
    if (mp < 5) {
      return;
    }

    mp -= 5;
    hp = maxHp;
  }

  int pray(int sec) {
    int curMp = mp;

    // 빈번하게 사용하는 함수라면 Random객체를 따로 만들어서 사용,
    // 그러나 현실과의 괴리감 (성직자의 속성으로 랜덤 객체를 가지고 있는 것이 맞는가?)
    // '_' 를 사용하면 private 속성이 되어 감출 수 있다.
    // 마나 회복량 : 기도한 초 + 보정 포인트 + 기존 마나
    mp = min(sec + Random().nextInt(3) + mp, maxMp);

    // 실제로 회복된 mp 양 리턴
    return mp - curMp;
  }

  String status() {
    return '''
name: $name
hp: $hp
mp: $mp''';
  }
}

void main() {
  Cleric cleric1 = Cleric('초보자', hp: 10, mp: 1);
  Cleric cleric2 = Cleric('중수', hp: 30, mp: 5);
  Cleric cleric3 = Cleric('고수', hp: 50, mp: 10);

  print(cleric1.status());

  print('1번째 mp 회복량 : ${cleric1.pray(3)}');

  print(cleric1.status());

  print('2번째 mp 회복량 : ${cleric1.pray(4)}');

  print(cleric1.status());

  print('3번째 mp 회복량 : ${cleric1.pray(5)}');

  print(cleric1.status());



}
import 'dart:math';

class Cleric {
  String name;
  int hp;
  int mp;

  int maxHp = 50;
  int maxMp = 10;

  Cleric({this.name, this.hp, this.mp});

  void selfAid() {
    if (mp < 5) {
      return;
    }

    mp -= 5;
    hp = maxHp;
  }

  int pray(int sec) {
    int curMp = mp;
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
  Cleric cleric1 = Cleric(name: '초보자', hp: 10, mp: 1);
  Cleric cleric2 = Cleric(name: '중수', hp: 30, mp: 5);
  Cleric cleric3 = Cleric(name: '고수', hp: 50, mp: 10);

  print(cleric1.status());

  print('1번째 mp 회복량 : ${cleric1.pray(3)}');

  print(cleric1.status());

  print('2번째 mp 회복량 : ${cleric1.pray(4)}');

  print(cleric1.status());

  print('3번째 mp 회복량 : ${cleric1.pray(5)}');

  print(cleric1.status());



}
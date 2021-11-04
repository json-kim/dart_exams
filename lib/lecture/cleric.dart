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

  String status() {
    return '''
  name: $name
  hp: $hp
  mp: $mp
  ''';
  }
}

void main() {
  Cleric cleric1 = Cleric(name: '초보자', hp: 10, mp: 1);
  Cleric cleric2 = Cleric(name: '중수', hp: 30, mp: 5);
  Cleric cleric3 = Cleric(name: '고수', hp: 50, mp: 10);

  print(cleric1.status());

  cleric1.selfAid();

  print(cleric1.status());

  print(cleric2.status());

  cleric2.selfAid();

  print(cleric2.status());

}
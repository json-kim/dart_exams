class Cleric {
  String name;
  int hp;
  int mp;

  int maxHp = 50;
  int maxMp = 10;

  Cleric({this.name, this.hp, this.mp});

}

void main() {
  Cleric cleric1 = Cleric(name: '초보자', hp: 10, mp: 1);
  Cleric cleric2 = Cleric(name: '중수', hp: 30, mp: 5);
  Cleric cleric3 = Cleric(name: '고수', hp: 50, mp: 10);

  print('''
  name: ${cleric1.name}
  hp: ${cleric1.hp}
  mp: ${cleric1.mp}''');
  print('''
  name: ${cleric2.name}
  hp: ${cleric2.hp}
  mp: ${cleric2.mp}''');
  print('''
  name: ${cleric3.name}
  hp: ${cleric3.hp}
  mp: ${cleric3.mp}''');

}
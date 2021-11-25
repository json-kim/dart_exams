void main() {

  Slime slime = Slime();
  Monster monster = Slime();
  Wolf wolf = Wolf();

  slime.run();
  monster.run();
  wolf.run();

  // ---- 앞 뒤 코드 동일하게 동작 --------

  List<Monster> monsters = [
    slime,
    monster,
    wolf,
  ];

  for (final monster in monsters) {
    monster.run();
  }
}

abstract class Monster {
  void run() {
    print('몬스터는 도망갔다.');
  }
}

class Slime extends Monster {
  @override
  void run() {
    print('슬라임은 슬금슬금 도망갔다.');
  }
}

class Wolf extends Monster {

}
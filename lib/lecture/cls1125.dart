void main() {
  // Creator player1 = GamePlayer001(1);
  // Host player1 = GamePlayer001(1);
  Player player1 = GamePlayer001(1);
  Player player256 = GamePlayer256(256);

  print(check(player1));
  print(check(player256));

  // 다 아우를수 있는 타입, 포괄적인 타입
  // 여러가지 타입의 객체들을 다 아우를수 있게하기 위해 사용
  List<Terran> terranList = [
    Marin(),
    Medic(),
  ];

  for (Terran terran in terranList) {
    if (terran is Attackable) {
      (terran as Attackable).attack();
    }
  }
}

abstract class Terran{}

abstract class Attackable {
  void attack();
}

class Marin extends Terran implements Attackable {
  @override
  void attack() {}
}

class Medic extends Terran {

}

class Tank extends Terran implements Attackable {
  @override
  void attack() {}

}

bool check(Player player) {
  if (player is Host) {
    return true;
  }
  return false;
}

class GamePlayer001 extends Player implements Host, Creator{
  GamePlayer001(int number) : super(number);


}

class GamePlayer256 extends Player {
  GamePlayer256(int number) : super(number);
}

abstract class Player {
  int number;

  Player(this.number);
}

abstract class Host {

}

abstract class Creator {

}

class Soldier {
  String mark;

  Soldier(this.mark);
}
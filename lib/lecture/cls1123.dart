void main () {
  MissileTurret turret1 = MissileTurret(1, 1, 10);
}

class MissileTurret {
  int x;
  int y;
  int range;
  int hp;
  int power;

  MissileTurret(this.x, this.y, this.range);

  void scan(List<Minion> minions) {
    
  }
}

class Minion {
  int x;
  int y;

  int hp;
  int power;

  Minion(this.hp, this.power);

  void move(int x, int y) {
    this.x = x;
    this.y = y;
  }

  void attack(MissileTurret turret) {
    turret.hp -= power;
  }
}
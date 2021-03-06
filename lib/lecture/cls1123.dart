import 'dart:math';

void main () {
  MissileTurret turret1 = MissileTurret(1, 1, 10);
}

bool isRanged(int x, int y, int x2, int y2, int radius) {
  return pow(x - x2, 2) + pow(y - y2, 2) <= pow(radius, 2);
}

class MissileTurret {
  int x;
  int y;
  int range;
  int hp;
  int power;

  MissileTurret(this.x, this.y, this.range);

  void scan(List<Minion> minions) {
    for(Minion minion in minions) {
      bool result = isRanged(x, minion.x, y, minion.y, range);
      if (result) {
        fire(minion);
      }
    }
  }

  void fire(Minion minion) {
    minion.hp -= power;
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
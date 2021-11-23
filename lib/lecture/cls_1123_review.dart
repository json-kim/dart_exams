void main() {
  Hero hero = Hero();
  SuperHero superHero = SuperHero();
  SuperUltraHero superUltraHero = SuperUltraHero();

  Dog dog = Dog();

  hero.attack(dog);
  superHero.attack(dog);
  superUltraHero.attack(dog);
}

class Dog {
  // dog ...
}

class Hero {
  String name;
  int hp;

  Hero({this.name, this.hp});

  void attack(Dog dog) {
    // 공격
    print('공격');
  }
}

class SuperHero extends Hero {

  SuperHero({name, hp}) : super(name: name, hp: hp);

  @override
  void attack(Dog dog) {
    print('나는 더 멋지게 공격');
  }

  void fly() {
    // 날아
  }
}

class SuperUltraHero extends SuperHero {

  SuperUltraHero({name, hp}) : super(name: name, hp: hp);

  @override
  void attack(Dog dog) {
    print('공격 준비');
    super.attack(dog);
    print('공격!!!');
  }

  void run() {
    // 달리기~
  }
}
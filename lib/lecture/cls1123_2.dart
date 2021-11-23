void main() {
  SuperHero ironman = SuperHero(name: 'ironman', hp: 50, team: 'avengers');

  print(ironman.name);
  print(ironman.hp);
  print(ironman.team);
}

class Dog {}

class Hero {
  String name;
  int hp;

  Hero({this.name, this.hp});

  void attack(Dog dog) {
    // 공격의
    print('멋지게 공격');
  }
}

// SuperHero : sub class
// Hero : super class
class SuperHero extends Hero {
  String team;
  SuperHero({name, hp, this.team}) : super(name: name, hp: hp);

  // @ 로 시작하는 것 : annotation
  // 슈퍼클래스의 메서드를 재정
  @override
  void attack(Dog dog) {
    print('나는 더 멋지게 공격');
  }

  void fly() {
    // 날라~
  }
}

// this : 나
// super : 슈퍼 클래스
class SuperUltraHero extends SuperHero {

  void run() {

  }

  @override
  void attack(Dog dog) {
    print('공격 준비');
    super.attack(dog);
    print('공격!!!');
  }

  SuperUltraHero(name, hp) : super(name: name, hp: hp);
}
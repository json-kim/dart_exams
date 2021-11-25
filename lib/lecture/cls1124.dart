void main() {
  Hero hero = Hero(name: '히어로', hp: 100);
  Wizard wizard = Wizard(name: '위자드', hp: 100, mp: 50);

  Dog dog = Dog();

  hero.attack(dog);
  wizard.attack(dog);

  // Character superman = Character(name: 'superman', hp: 100);
  // superman.attack(dog);
}

abstract class Character {
  String name;
  int hp;

  Character({this.name, this.hp});

  void attack(Dog dog);
}

class Dog {
  int hp = 100;
}

class Hero extends Character {
  Hero({String name, int hp}) : super(name: name, hp: hp);

  @override
  void attack(Dog dog) {
    print('멋지게 공격');
    dog.hp -= 10;
  }
}

class Wizard extends Character {
  int mp;

  Wizard({String name, int hp, this.mp}) : super(name: name, hp: hp);

  @override
  void attack(Dog dog) {
    // TODO: implement attack

  }


  // attak(Dog dog) {
  //   print('위자드 공격');
  //   dog.hp -= 5;
  // }
}

// 인터페이스 : 기능만을 정의
// 완벽하게 미구현된 추상 클래
abstract class Human {
  void talk();
}

abstract class Bionic {
  void breath();
}

class Knight implements Human, Bionic{
  @override
  void talk() {
    // TODO: implement talk
  }

  @override
  void breath() {
    // TODO: implement breath
  }
}

class Knight2 extends Human {
  @override
  void talk() {
    // TODO: implement talk
  }
}

abstract class Car {
  void drive();
  void light();
}

abstract class NormalCar implements Car {
  void changeGear(int gear);
}

abstract class ElectronicCar implements Car {
}

class Sonata extends NormalCar {
  @override
  void changeGear(int gear) {
    // TODO: implement changeGear
  }

  @override
  void drive() {
    // TODO: implement drive
  }

  @override
  void light() {
    // TODO: implement light
  }
  
}
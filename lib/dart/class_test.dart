void main() {}

// 메서드 클래스 안에 정의 되어있는 함수
class Person {
  String name;
  int age;

  // 외부 요인을 사용하지 않아야 한다.
  // 같은 입력값이면 출력값도 같아야 한다.
  void speak() {
    print('내 이름은 $name');
  }

  void eat() {

  }
}


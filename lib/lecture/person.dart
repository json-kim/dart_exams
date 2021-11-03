class Person {
  // Property (속성)
  String name;
  int age;
  double height;
  String gender;

  // Constructor (생성자)
  Person({this.name, this.age, this.height, this.gender});

  // Method (기능)
  String introduceMySelf() {
    return '저는 $name 입니다. $age살 이고요, 키는 ${height}Cm 이고 $gender자입니다.';
  }
}
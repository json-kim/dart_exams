import 'dart:math';

void main() {
  introduceOnself();
  email(title: '제목', address: 'aaa@aaa.com', text: 'test');
  email(address: 'aaa@aaa.com', text: 'test');
  print(calcTriangleArea(10, 5));
  print(calcCircleArea(5));
}

double calcCircleArea(double radius) {
  //return 3.14 * radius * radius;
  //return 3.14 * pow(radius, 2);
  return pi * pow(radius, 2);
}

double calcTriangleArea(double bottom, double height) {
  double result = 0.0;

  result = bottom * height / 2;

  return result;
}

void email({String title = '제목 없음', String address, String text}) {
  print('''
$address 에 아래의 메일을 송신한다.
제목 : $title
본문 : $text
  ''');
}

void introduceOnself() {
  String name = '김재승';
  int age = 27;
  double height = 170;
  String gender = '남';

  print('저는 $name 입니다. $age살 이고요, 키는 ${height}Cm 이고 $gender자입니다.');
}
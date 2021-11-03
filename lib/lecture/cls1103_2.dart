import 'package:dart_exams/lecture/person.dart';

void main() {
  final Person person1 = Person(name: '김재승', age: 27, height: 170, gender: '남');
  final Person person2 = Person(name: '홍길동', age: 20, height: 180, gender: '남');
  final Person person3 = Person(name: '한석봉', age: 25, height: 150, gender: '남');

  print(person1.introduceMySelf());
  print(person2.introduceMySelf());
  print(person3.introduceMySelf());

}



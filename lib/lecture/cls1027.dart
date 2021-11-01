import 'dart:math';
import 'dart:io';

void main() {

  // 화면에 "점을 보세요" 라고 표시합니다.
  print('점을 보세요');

  // 화면에 "이름을 입력해 주세요" 라고 표시합니다.
  print('이름을 입력해 주세요');

  // 키보드로 입력 받아 String 형 변수 name 에 본인의 이름을 넣습니다.
  String name = stdin.readLineSync();

  // 화면에 "나이를 입력해 주세요" 라고 표시합니다.
  print('나이를 입력해 주세요');

  // String형 변수 ageString에 나이를 문자열 형태로 넣습니다.
  String ageString = stdin.readLineSync();

  // 변수 ageString의 내용을 int형으로 변환하고, int형 변수 age에 대입합니다.
  int age = int.parse(ageString);

  // 0부터 3까지 난수를 생성해, int형 변수 fortune에 대입합니다.
  Random random = Random();
  int fortune = random.nextInt(4);

  // fortune의 수치를 증가연산자(++)로 1 증가시켜, 1부터 4까지의 난수로 합니다.
  fortune++;

  // 화면에 "점꾀가 나왔습니다!" 라고 표시합니다.
  print('점꾀가 나왔습니다!');

  // 화면에 "(나이)살의 (이름)씨, 당신의 운세번호는 (난수)입니다." 라고 표시합니다.
  // (나이)에는 변수 age를, (이름)에는 변수 name을, 그리고 (난수)에는 8. 에서 만든 난수의 숫자를 표시합니다.
  print('$age살의 $name씨, 당신의 운세번호는 $fortune입니다.');

  // 화면에 "1:대박 2:중박 3:보통 4:망" 중 하나를 표시합니다.
  if (fortune == 1) {
    print('1: 대박');
  } else if (fortune == 2) {
    print('2: 중박');
  } else if (fortune == 3) {
    print('3: 보통');
  } else {
    print('4: 망');
  }
}
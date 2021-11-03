void main() {
  introduceOnself();
  email(title: '제목', address: 'aaa@aaa.com', text: 'test');
  email(address: 'aaa@aaa.com', text: 'test');
}

void email({String title, String address, String text}) {
  String titleResult = title;

  if (titleResult == null) {
    titleResult = '제목 없음';
  }

  print('''
$address 에 아래의 메일을 송신한다.
제목 : $titleResult
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
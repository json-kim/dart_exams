void main() {
  email('오전 수업', 'flutter@dart.com', '오전 수업에는 메소드를 공부하고 있습니다.');
}

void email(String title, String address, String text) {
  print('$address 에 아래의 메일을 송신한다.\n제목: $title\n본문: $text');
}
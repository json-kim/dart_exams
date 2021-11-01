void main() {
  email('flutter@dart.com', '오늘은 날씨가 좋습니다.');
}

void email(String address, String text) {
  print('$address 에 아래의 메일을 송신한다.\n제목: 제목 없음\n본문: $text');
}
void main() {
  final List<int> items = [1, 2, 3, 4, 5];

  items.forEach((int item) {
    print(item);
  });
  items.forEach((int item) => print(item));
  items.forEach(print);
  // 동일한 형태(리턴 타입, 매개변수 타입)이면
  // 함수를 일급객체로 값 그대로 전달해줄 수 있다.
  items.forEach(myPrint);
}

void myPrint(int num) {
  print('이건 내프린트야 $num');
}

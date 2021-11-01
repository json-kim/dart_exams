void main() {
  d002(10, 20);
  d002(3, 3);
}

void d002(int a, int b) {
  // 코드 작성
  if (a > b) {
    print(a);
  } else if (b > a) {
    print(b);
  } else {
    print('eq');
  }
}

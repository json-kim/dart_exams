void main() {
  print(exam(60, 90));
  print(exam(45, 45));
}

/// 두 각 [a, b]가 주어질 때, 나머지
int exam(int a, int b) {
  int result = 0;

  result = 180 - a - b;

  return result;
}

// 화살표 표기법, 람다식(lambda expression)
int exam2(int a, int b) => 180 - a - b;
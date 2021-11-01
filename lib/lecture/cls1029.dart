void main() {
  // '[]' 로 작성한 매개변수들은 순서(위치)로 구분
  print(add(3, 5, 3, 5, 3));
  // '{}' 로 작성한 매개변수들은 이름으로 구분
  print(add2(3, 5, c: 3, d: 5, e: 3));
}

// Optional positional parameter
// 옵션 매개변수로 사용하고자 하는 변수들은 매변수들 뒤쪽에 '[]' 로 감싸준다.
// 기본값을 줘야 옵션 매개변수를 사용하지 않았을 때, 기본값이 저장 된다.
int add(int a, int b, [int c = 0, int d = 0, int e = 0]) {
  return a + b + c + d + e;
}

// named parameter
// 매개변수에 이름을 지정해서 사용해주는 방법은 '{}' 중괄호를 사용한다.
// 기본값을 줘야 선택적 매개변수를 사용하지 않았을 때, 기본값이 저장 된다.
// 가독성이 좋다.
// 순서를 몰라도 된다.
int add2(int a, int b, {int c = 0, int d = 0, int e = 0}) {
  return a + b + c + d + e;
}
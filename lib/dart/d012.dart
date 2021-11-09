void main() {
  Calculator calc = Calculator();

  print(calc.getAbs(5));
  print(calc.getAbs(-10));
  print(calc.getAbs(3));
}

class Calculator {
  int getAbs(int inputNum) {
    // 정수 입력값이 들어오면 절대값 반환하기
    return inputNum < 0 ? -inputNum : inputNum;
    // return inputNum.abs();
  }
}
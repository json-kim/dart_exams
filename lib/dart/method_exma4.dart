import 'dart:math';

void main() {
  print(calcTriangleArea(bottom: 3, height: 4));
  print(calcCircleArea(5));
}

double calcTriangleArea({double bottom, double height}) {
  // 면적을 구하고 반환
  return bottom * height / 2;
}

double calcCircleArea(double radius) {
  // 면적을 구하고 반환
  return pi * radius * radius;
}
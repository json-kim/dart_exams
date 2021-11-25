import 'dart:math';

void main() {
  final List<int> items = [1, 2, 3, 4, 5];

  print(items.reduce((a, b) => max(a, b)));

  print(items.fold<int>(0, (prev, e) => prev + e));
}

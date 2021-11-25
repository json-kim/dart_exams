void main() {
  final List<int> items = [1, 2, 3, 4, 5];

  // 메서드 체인(chain)
  List<int> filteredList =
      items.where((e) => e.isEven).toList(); // Iterable => List

  // 다형성 : iterable 을 구현한 List
  Iterable<int> iterable = [1, 2, 3, 4, 5];

  print(iterable);

  items
      .where((e) => e.isEven) // Iterable<int>
      .map((e) => '숫자 $e') // Iterable<String>
      .toList(); // List<String>
}

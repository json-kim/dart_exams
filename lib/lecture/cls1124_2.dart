void main() {
  Book book = Book('홍길동전', 1000, '빨강', '12323123');
}

abstract class Thing {
  double getWeight();
  void setWeight(double weight);
}

abstract class Asset {
  final String name;
  final String price;

  Asset(this.name, this.price);
}

abstract class TangibleAsset extends Asset implements Thing {
  final String color;
  double _weight;

  TangibleAsset(name, price, this.color) : super(name, price);

  @override
  double getWeight() {
    return _weight;
  }

  @override
  void setWeight(double weight) {
    _weight = weight;
  }
}

class Book extends TangibleAsset {
  final String isbn;

  Book(name, price, color, this.isbn) : super(name, price, color);
}

class Computer extends TangibleAsset {
  final String makerName;

  Computer(name, price, color, this.makerName) : super(name, price, color);
}
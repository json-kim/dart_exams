import 'dart:math';

void main() {
  // 1. 2011년에 일어난 모든 트랜잭션을 찾아 값을 값을 오름차순으로 정리하여 이름을 나열하시오
  (transactions.where((Transaction e) => e.year == 2011).toList()
        ..sort((a, b) => a.value.compareTo(b.value)))
      .forEach((e) => print(e.trader.name));
  print('');

  // 2. 거래자가 근무하는 모든 도시를 중복 없이 나열하시오
  transactions.map((tr) => tr.trader.city).toSet().forEach((e) => print(e));
  print('');

  // 3. 케임브리지에서 근무하는 모든 거래자를 찾아서 이름순으로 정렬하여 나열하시오
  (transactions
          .map((e) => e.trader)
          .where((e) => e.city == 'Cambridge')
          .toList()
        ..sort((a, b) => a.name.compareTo(b.name)))
      .forEach((e) => print(e.name));
  print('');

  // 4. 모든 거래자의 이름을 알파벳순으로 정렬하여 나열하시오
  (transactions.map((e) => e.trader).toList()
        ..sort((a, b) => a.name.compareTo(b.name)))
      .forEach((e) => print(e.name));
  print('');

  // 5. 밀라노에 거래자가 있는가?
  print(transactions.any((e) => e.trader.city == 'Milan'));
  print('');

  // 6. 케임브리지에 거주하는 거래자의 모든 트랙잭션값을 출력하시오
  transactions
      .where((e) => e.trader.city == 'Cambridge')
      .forEach((e) => print(e.value));
  print('');

  // 7. 전체 트랜잭션 중 최대값을 얼마인가?
  print((transactions..sort((a, b) => a.value.compareTo(b.value))).last.value);
  print('');

  // 8. 전체 트랜잭션 중 최소값은 얼마인가?
  print(transactions.map((e) => e.value).reduce((a, b) => min(a, b)));
}

class Trader {
  String name;
  String city;

  Trader(this.name, this.city);
}

class Transaction {
  Trader trader;
  int year;
  int value;

  Transaction(this.trader, this.year, this.value);
}

final transactions = [
  Transaction(Trader('Brain', 'Cambridge'), 2011, 300),
  Transaction(Trader('Raoul', 'Cambridge'), 2012, 1000),
  Transaction(Trader('Raoul', 'Cambridge'), 2011, 400),
  Transaction(Trader('Mario', 'Milan'), 2012, 710),
  Transaction(Trader('Mario', 'Milan'), 2012, 700),
  Transaction(Trader('Alan', 'Cambridge'), 2012, 950),
];

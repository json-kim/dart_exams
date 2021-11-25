import 'dart:io';
import 'dart:convert';

void main() {
  String input = stdin.readLineSync(encoding: utf8);

  Expression expression = Expression(operands: input.split('+'));

  int sum = expression.getSum();
  print(sum);
}

class Expression {
  List<String> _operandsString;
  List<String> get operandsString => this._operandsString;

  List<int> _operandsInt;
  List<int> get operandsInt => this._operandsInt;

  Expression({List<String> operands}) : this._operandsString = operands;

  void operandsStringToInt() {
    RegExp regExp = RegExp(r'^(<*)(/*)$');

    _operandsInt = operandsString.map((oper) {
      final match = regExp.firstMatch(oper);
      int ten = match.group(1).length;
      int one = match.group(2).length;

      return 10 * ten + one;
    }).toList();
  }

  int getSum() {
    operandsStringToInt();
    int result = operandsInt.reduce((a, b) => a + b);

    return result;
  }
}
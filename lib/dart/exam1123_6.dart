import 'dart:io';
import 'dart:convert';

void main() {
  String input = stdin.readLineSync(encoding: utf8);

  Pepero pepero = Pepero(peperoBundle: input);

  if (pepero.getNumOfPepero() >= 11) {
    print('OK');
  } else {
    print(11 - pepero.peperoBundle.length);
  }
}

class Pepero {
  String peperoBundle;

  Pepero({this.peperoBundle});

  int getNumOfPepero() {
    return peperoBundle.length;
  }
}
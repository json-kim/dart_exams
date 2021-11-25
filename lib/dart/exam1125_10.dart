import 'dart:io';
import 'dart:convert';

void main() {
  int n = int.parse(stdin.readLineSync(encoding: utf8));

  List<String> ipAddresses = [];
  for (int i = 0; i < n; i++) {
    String input = stdin.readLineSync(encoding: utf8);
    ipAddresses.add(input);
  }

  IPChecker ipChecker = IPChecker();

  for (String ip in ipAddresses) {
    print(ipChecker.checkIP(ip));
  }
}

class IPChecker {
  RegExp _regExp = RegExp(r'^(\d|\d{2}|1\d{2}|2[0-4][0-9]|25[0-5])\.(\d|\d{2}|1\d{2}|2[0-4][0-9]|25[0-5])\.(\d|\d{2}|1\d{2}|2[0-4][0-9]|25[0-5])\.(\d|\d{2}|1\d{2}|2[0-4][0-9]|25[0-5])$');

  bool checkIP(String ip) {
    bool result = _regExp.hasMatch(ip);

    return result;
  }
}
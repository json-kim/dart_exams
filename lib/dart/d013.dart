void main() {
  Divider divider = Divider();

  print('${divider.getQuotient(10, 3)} ${divider.getRemainder(10, 3)}');

  print('${divider.getQuotient(12, 14)} ${divider.getRemainder(12, 14)}');
}

class Divider {
  int getQuotient(int m, int n) {
    return m ~/ n;
  }

  int getRemainder(int m, int n) {
    return m % n;
  }
}

void main() {
  ArithmeticProgression ap1 = ArithmeticProgression(start: 3, difference: 3);
  print(ap1.getSequenceString(10));

  ArithmeticProgression ap2 = ArithmeticProgression(start: 5, difference: 10);
  print(ap2.getSequenceString(10));

  ArithmeticProgression ap3 = ArithmeticProgression(start: 1, difference: 3);
  print(ap3.getSequenceString(10));
}

class ArithmeticProgression {
  int start;
  int difference;

  ArithmeticProgression({this.start, this.difference});

  int getNthTerm(int n) {
    return start + (n-1) * difference;
  }

  String getSequenceString(int n) {
    List<int> sequence = List.generate(n, (index) => getNthTerm(index + 1));

    return sequence.join(' ');
  }
}
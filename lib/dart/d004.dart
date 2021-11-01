void main() {
  List<String> names = ['Java', 'Gino', 'Alice'];
  exam(names);
}

void exam(List<String> names) {
  StringBuffer buffer = StringBuffer('Hello');

  for (int i = 0; i < names.length; i++) {
    print(buffer.hashCode);
    buffer.write([' ', names[i]].join());

    if (i < names.length - 1) {
      buffer.write(',');
    } else {
      buffer.write('.');
    }
  }

  print(buffer.toString());
}
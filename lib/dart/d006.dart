void main() {
  print(exam(1, 'km'));
  print(exam(54, 'km'));
  print(exam(2, 'cm'));
  print(exam(12, 'm'));
}

int exam(int n, String s) {
  int result = 0;

  if (s == 'km') {
    result = n * 1000 * 100 *10;
  } else if (s == 'm') {
    result = n * 100 * 10;
  } else {
    result = n * 10;
  }

  return result;
}
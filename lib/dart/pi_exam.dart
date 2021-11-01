import 'dart:math';

void main() {
  print(piEstimate(1000000));
}

double piEstimate(int tries) {
  double result = 0;
  int hits = 0;
  Random random = Random();

  for (int i = 0; i < tries; i++) {
    double x = random.nextDouble() * 2 - 1;
    double y = random.nextDouble() * 2 - 1;
    double distance = sqrt(x * x + y * y);

    if (distance <= 1) {
      hits++;
    }
  }

  // 원주율
  result = 4 * hits / tries;

  return result;
}

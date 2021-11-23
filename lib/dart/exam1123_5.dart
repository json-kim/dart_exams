import 'dart:io';
import 'dart:convert';

void main() {
  List<Typhoon> typhoons = [];

  for (int i = 0; i < 5; i++) {
    int date = int.parse(stdin.readLineSync(encoding: utf8));
    Typhoon typhoon = Typhoon(date: date);
    typhoons.add(typhoon);
  }

  Forecast forecast = Forecast(typhoons: typhoons);
  List<int> intervals = forecast.getIntervalsTyphoons();

  for (final interval in intervals) {
    print(interval);
  }
}

class Forecast {
  List<Typhoon> typhoons;

  Forecast({this.typhoons});

  List<int> getIntervalsTyphoons() {
    List<int> intervals = [];

    for (int i = 0; i < typhoons.length - 1; i++) {
      int interval = typhoons[i].getInterval(typhoons[i + 1]);
      intervals.add(interval);
    }

    return intervals;
  }
}

class Typhoon {
  int date;

  Typhoon({this.date});

  int getInterval(Typhoon otherTyphoon) {
      return (this.date - otherTyphoon.date).abs();
  }
}
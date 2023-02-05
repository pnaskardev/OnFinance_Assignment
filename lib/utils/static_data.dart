import 'package:onfinance_assignment/models/ResultModel.dart';
import 'package:onfinance_assignment/utils/date.dart';

class StaticData
{
  static List<Results> ls=
  [
    Results
    (
      c: 1.237,
      o: 1.255,
      h: 1.259,
      l: 1.235,
      v: 75.30,
      dateTime: Date.formatter.parse("05-02-2023")
    ),
    Results
    (
      c: 1.251,
      o: 1.245,
      h: 1.283,
      l: 1.216,
      v: 78.78,
      dateTime: Date.formatter.parse("04-02-2023")
    ),
    Results
    (
      c: 1.245	,
      o: 1.183,
      h: 1.252,
      l: 1.167,
      v: 111.99,
      dateTime: Date.formatter.parse("03-02-2023")
    ),
    Results
    (
      c: 1.178,
      o: 1.196,
      h: 1.255,
      l: 1.175,
      v: 133.45,
      dateTime: Date.formatter.parse("02-02-2023")
    ),
    Results
    (
      c: 1.178,
      o: 1.196,
      h: 1.255,
      l: 1.175,
      v: 133.45,
      dateTime: Date.formatter.parse("01-02-2023")
    ),

  ];
}
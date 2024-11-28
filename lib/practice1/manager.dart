import 'package:dart_practice/practice1/goods.dart';

class Manager {
  List<Goods> goodsList = [];
  int myMoney = 0;

  Manager() {
    init();
  }

  init() {
    // builder 사용
    Goods chocolate = Goods(name: "초콜릿", price: 500, count: 5);

    Goods piko = Goods(name: "빼빼로", price: 600, count: 5);

    // cascade 사용
    Goods fanta = Goods()
      ..name = '환타'
      ..price = 1000
      ..count = 5;

    Goods sprite = Goods()
      ..name = '사이다'
      ..price = 1100
      ..count = 5;

    goodsList = [chocolate, piko, fanta, sprite];
  }
}

// 전역변수 선언.
import 'package:dart_practice/practice1/goods.dart';
import 'package:dart_practice/practice1/manager.dart';

late Manager manager;

void practice1Main() {
  String title = 'practice1 자판기';
  manager = Manager();
  onMachine();
}

void onMachine() {
  // 메뉴 출력
  viewMenu();

  // 금액 투입
  inMoney();

  // 빼빼로 구매
  Goods piko = manager.goodsList.firstWhere((goods) => goods.name == '빼빼로');
  buy(piko);

  // 메뉴 출력
  viewMenu();
}

void viewMenu() {
  print('--------- [ 자판기 상태 ] ---------');
  if (manager.goodsList != null || manager.goodsList.isNotEmpty) {
    manager.goodsList.asMap().forEach((index, drink) {
      print('${index + 1}. ${drink.toString()}');
    });
  }
  print('자판기가 비어있습니다.');
}

void inMoney() {
  manager.myMoney = 5000;
  print('${manager.myMoney}원을 넣었습니다.');
}

void buy(Goods buyGoods) {
  if (buyGoods != null) {
    Goods getGoods =
        manager.goodsList.firstWhere((goods) => goods.name == buyGoods.name);
    getGoods.count = getGoods.count! - 1;
    manager.myMoney = manager.myMoney - getGoods.price!;
    print(
        '[${getGoods.name} 구매성공]\d가격: ${getGoods.price}원\d거스름돈: ${manager.myMoney}\d남은 수량: ${getGoods.price}');
  }
}

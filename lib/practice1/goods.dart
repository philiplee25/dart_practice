class Goods {
  String? name;
  int? price;
  int? _count;

  Goods._builder();

  factory Goods({
    String? name,
    int? price,
    int? count,
  }) {
    return Goods._builder()
      ..name = name
      ..price = price
      .._count = count;
  }

  int? get count => _count;

  set count(int? value) => _count = value;

  @override
  String toString() {
    return '품명: $name, 가격: $price, 수량: $_count';
  }
}

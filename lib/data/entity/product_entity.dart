class ProductEntity {
  final String id;
  final String code;
  final String name;
  final String price;
  final DateTime createTime;
  final DateTime updateTime;

  ProductEntity({
    required this.id,
    required this.code,
    required this.name,
    required this.price,
    required this.createTime,
    required this.updateTime,
  });

  factory ProductEntity.fromMap(Map<String, dynamic> map) {
    return ProductEntity(
      id: map["id"],
      code: map["code"],
      name: map["name"],
      price: map["price"],
      createTime: DateTime.parse(map["create_time"]),
      updateTime: DateTime.parse(map["update_time"]),
    );
  }

  @override
  String toString() {
    return 'ProductEntity{id: $id, code: $code, name: $name, price: $price, createTime: $createTime, updateTime: $updateTime}';
  }
}
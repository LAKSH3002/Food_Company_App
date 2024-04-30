class cart {
  late final int? id;
  final String? productId;
  final String? productname;
  final int? initialprice;
  final int? productprice;
  final int? quantity;
  final String? image;

  cart({
    required this.id,
    required this.productId,
    required this.productname,
    required this.initialprice,
    required this.productprice,
    required this.quantity,
    required this.image,
  });

  cart.fromMap(Map<dynamic, dynamic> res)
      : id = res['id'],
        productId = res['productId'],
        productname = res['productname'],
        initialprice = res['initialprice'],
        productprice = res['productprice'],
        quantity = res['quantity'],
        image = res['image'];

  Map<String, Object?> toMap() {
    return {
      'id': id,
      'productId': productId,
      'productname': productname,
      'initialprice': initialprice,
      'productprice': productprice,
      'quantity': quantity,
      'image': image,
    };
  }
}

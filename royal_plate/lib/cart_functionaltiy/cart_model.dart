class Cart {
  late final int? id;
  final String? productId;
  final String? productName;
  final int? initialprice;
  final int? productPrice;
  final int? quantity;
  final String? image;

  Cart({
    required this.id,
    required this.productId,
    required this.productName,
    required this.initialprice,
    required this.productPrice,
    required this.quantity,
    required this.image,
  });

  Cart.fromMap(Map<dynamic, dynamic> res)
      : id = res['id'],
        productId = res['productId'] ?? '',
        productName = res['productName'] ?? '',
        productPrice = res['productPrice'] ?? 0,
        initialprice = res['initialprice'] ?? 0,
        quantity = res['quantity'] ?? 1,
        image = res['image'] ?? '';

  Map<String, Object?> toMap() {
    return {
      'id': id,
      'productId': productId,
      'productname': productName,
      'productprice': productPrice,
      'initialprice': initialprice,
      'quantity': quantity,
      'image': image,
    };
  }
}

  //  dbHelper.insert(Provider.of(context,
  //                                                     listen: false)(
  //                                                 id: index,
  //                                                 productId: index.toString(),
  //                                                 productname: foodname[index]
  //                                                     .toString(),
  //                                                 initialprice:
  //                                                     food_rate[index],
  //                                                 productprice:
  //                                                     food_rate[index],
  //                                                 quantity: 1,
  //                                                 image: food_image[index]
  //                                                     .toString())
  //                                             .then((value) {
  //                                           print('product is added');
  //                                           Cart.addTotalPrice(double.parse(
  //                                               food_rate[index].toString()));
  //                                         }).onError((error, StackTrace) {
  //                                           print(error);
  //                                         }));
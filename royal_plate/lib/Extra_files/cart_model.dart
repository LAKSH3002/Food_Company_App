class Cart {
  late final int? id;
  final String? productId;
  final String? productname;
  final int? initialprice;
  final int? productprice;
  final int? quantity;
  final String? image;

  Cart({
    required this.id,
    required this.productId,
    required this.productname,
    required this.initialprice,
    required this.productprice,
    required this.quantity,
    required this.image,
  });

  Cart.fromMap(Map<Object, dynamic> res)
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
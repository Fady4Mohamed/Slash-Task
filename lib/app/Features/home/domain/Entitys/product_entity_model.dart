class ProductEntityModel {
  final String name;
  final String image;
  final num price;

  ProductEntityModel(
      {required this.name,
      required this.image,
      required this.price,
      });

  factory ProductEntityModel.fromjson(jsondata) {
    return ProductEntityModel(
        name: jsondata['name'],
        image: jsondata['image'],
        price: jsondata['price']);
  }
}

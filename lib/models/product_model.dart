class ProductModel {
  final int id;
  final String name;
  final String image;
  final double price;
  final double discount;
  final double rate;

  ProductModel(
    this.id,
    this.name,
    this.image,
    this.price,
    this.discount,
    this.rate,
  );

  static List<ProductModel> productList = [
    ProductModel(1, 'Shoes', 'assets/images/flower1.jpeg', 200, 20, 0),
    ProductModel(2, 'Shoes', 'assets/images/flower2.jpeg', 300, 10, 0),
    ProductModel(3, 'Shoes', 'assets/images/flower1.jpeg', 200, 20, 0),
    ProductModel(4, 'Shoes', 'assets/images/flower2.jpeg', 300, 10, 0),
    ProductModel(5, 'Shoes', 'assets/images/flower1.jpeg', 200, 20, 0),
  ];
}

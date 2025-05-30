class ProductModel {
  final String productName;
  final String type;
  final int price;
  int quantity;

  ProductModel({
    required this.productName,
    required this.type,
    required this.price,
    this.quantity = 1,
  });
}

final products = [
  ProductModel(
      productName: 'Tiket Masuk Dewasa', type: 'Nusantara', price: 50000),
  ProductModel(
      productName: 'Tiket Masuk Anak-anak', type: 'Nusantara', price: 20000),
  ProductModel(
      productName: 'Tiket Masuk Dewasa', type: 'Mancanegara', price: 150000),
  ProductModel(
      productName: 'Tiket Masuk Anak-anak', type: 'Mancanegara', price: 40000),
];

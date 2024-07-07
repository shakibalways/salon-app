class ProductList {
  final String imagePath;
  final String productName;
  final String? productTime;
  final String? productWeight;
  ProductList({
    required this.imagePath,
    required this.productName,
    this.productTime,
   this.productWeight,
  });
}

class ProductInfo {
  final String id;
  final String name;
  final String imagepath;
  final String price;
  bool isLiked = false;
  bool isAdded = false;

  ProductInfo({
    required this.id,
    required this.name,
    required this.imagepath,
    required this.price,
  });
}

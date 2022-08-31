class Product {
  final String title;
  final String imageUrl;
  final String category;
  final String price;
  double rate;
  bool favorite = false;

  Product({
    this.title,
    this.imageUrl,
    this.category,
    this.price,
    this.rate,
    this.favorite,
  });
}

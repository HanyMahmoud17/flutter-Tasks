class Product {
  int id;
  String title;
  String description;
  int price;
  double discountPercentage;
  // double rating;
  String category;
  String thumbnail;
  List<String> images = [];

  Product({
    required this.id,
    required this.title,
    required this.price,
    required this.description,
    required this.discountPercentage,
    // required this.rating,
    required this.category,
    required this.thumbnail,
  });

  // factory Product.fromJson(Map<String, dynamic> json) {
  //   return Product(
  //     id: json['id'],
  //     title: json['name'],
  //     price: json['price'],
  //     thumbnail: json['image'],
  //     category: json['category'],
  //     rating: json['rating'],
  //     discountPercentage: json['discountPercentage'],
  //     description: json['description'],
  //   );
  // }
}

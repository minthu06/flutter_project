class ProductModel {
  int? id;
  String? title;
  num? price;
  String? description;
  String? category;
  String? image;
  ProductModel(
      {this.id,
      this.title,
      this.category,
      this.description,
      this.image,
      this.price});
  factory ProductModel.fromJson(Map<String, dynamic> json) {
    var p = ProductModel(
      id: json['id'],
      title: json['title'],
      description: json['description'],
      price: json['price'],
      image: json['image'],
      category: json['category'],
    );
    return p;
  }
}

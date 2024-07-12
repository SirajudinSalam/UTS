class CoffeeItem {
  final int coffeeId;
  final String name;
  final String description;
  final double price;
  final int categoryId;
  final String imageUrl;
  final String volume;

  CoffeeItem({
    required this.coffeeId,
    required this.name,
    required this.description,
    required this.price,
    required this.categoryId,
    required this.imageUrl,
    required this.volume,
  });

  factory CoffeeItem.fromJson(Map<String, dynamic> json) {
    return CoffeeItem(
      coffeeId: json['coffee_id'],
      name: json['name'],
      description: json['description'],
      price: double.parse(json['price']),
      categoryId: json['category_id'],
      imageUrl: json['image_url'],
      volume: json['volume'],
    );
  }
}

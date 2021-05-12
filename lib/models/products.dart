import 'package:CShop/core/app_images.dart';

class Product {
  final String name;
  final String image;
  final double price;

  Product({
    required this.name,
    required this.image,
    required this.price,
  });

  static List<Product> get products => [
        Product(
            name: "Skol 350ml", image: AppImages.skolpilsen350ml, price: 3.00),
        Product(name: "Guaraná 2L", image: AppImages.guaranar2L, price: 6.00),
        Product(name: "Stella Longnek", image: AppImages.stella, price: 4.58),
        Product(
            name: "Original 600ml",
            image: AppImages.original600ml,
            price: 6.78),
        Product(
            name: "Gin Tanqueray",
            image: AppImages.gimtanqueray,
            price: 158.78),
      ];
}

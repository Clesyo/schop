import 'package:CShop/core/app_images.dart';

class Product {
  final int id;
  final String name;
  final String image;
  final double price;

  Product({
    required this.id,
    required this.name,
    required this.image,
    required this.price,
  });

  static List<Product> get products => [
        Product(
            id: 1,
            name: "Skol 350ml",
            image: AppImages.skolpilsen350ml,
            price: 3.00),
        Product(
            id: 2,
            name: "Guaraná 2L",
            image: AppImages.guaranar2L,
            price: 6.00),
        Product(
            id: 3,
            name: "Stella Longnek",
            image: AppImages.stella,
            price: 4.58),
        Product(
            id: 4,
            name: "Original 600ml",
            image: AppImages.original600ml,
            price: 6.78),
        Product(
            id: 5,
            name: "Gin Tanqueray",
            image: AppImages.gimtanqueray,
            price: 158.78),
      ];
}

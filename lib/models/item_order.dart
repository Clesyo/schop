import 'package:CShop/core/app_images.dart';
import 'package:CShop/models/order.dart';

import 'product.dart';

class ItemOrder {
  final Product product;
  final Order order;

  ItemOrder({
    required this.product,
    required this.order,
  });

  static List<ItemOrder> get itens => [
        ItemOrder(
          product: Product(
              id: 2,
              name: "Guaraná 2L",
              image: AppImages.guaranar2L,
              price: 6.00),
          order: Order(
              nunOrder: 2,
              date: "12/12/2020 14:25:21",
              status: "Cancelado",
              total: 1254.23),
        ),
        ItemOrder(
          product: Product(
              id: 4,
              name: "Original 600ml",
              image: AppImages.original600ml,
              price: 6.78),
          order: Order(
              nunOrder: 2,
              date: "12/12/2020 14:25:21",
              status: "Cancelado",
              total: 1254.23),
        ),
        ItemOrder(
          product: Product(
              id: 5,
              name: "Gin Tanqueray",
              image: AppImages.gimtanqueray,
              price: 158.78),
          order: Order(
              nunOrder: 2,
              date: "12/12/2020 14:25:21",
              status: "Cancelado",
              total: 1254.23),
        ),
      ];
}

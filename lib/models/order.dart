class Order {
  final int nunOrder;
  final String date;
  final String status;
  final double total;
  bool isExpanded;
  Order(
      {required this.nunOrder,
      required this.date,
      required this.status,
      required this.total,
      this.isExpanded = false});

  static List<Order> get orders => [
        Order(
            nunOrder: 1,
            date: "12/12/2020 14:25:21",
            status: "Pendente",
            total: 50.41),
        Order(
            nunOrder: 2,
            date: "12/12/2020 14:25:21",
            status: "Cancelado",
            total: 1254.23),
        Order(
            nunOrder: 3,
            date: "12/12/2020 14:25:21",
            status: "Processando",
            total: 587.36),
        Order(
            nunOrder: 4,
            date: "12/12/2020 14:25:21",
            status: "Completo",
            total: 125.24),
        Order(
            nunOrder: 5,
            date: "12/12/2020 14:25:21",
            status: "Pendente",
            total: 154.47),
      ];
}

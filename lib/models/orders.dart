class Orders {
  final int nunOrder;
  final String date;
  final String status;
  final double total;
  bool isExpanded;
  Orders(
      {required this.nunOrder,
      required this.date,
      required this.status,
      required this.total,
      this.isExpanded = false});

  static List<Orders> get orders => [
        Orders(
            nunOrder: 1,
            date: "12/12/2020 14:25:21",
            status: "Pendente",
            total: 50.41),
        Orders(
            nunOrder: 2,
            date: "12/12/2020 14:25:21",
            status: "Cancelado",
            total: 1254.23),
        Orders(
            nunOrder: 3,
            date: "12/12/2020 14:25:21",
            status: "Processando",
            total: 587.36),
        Orders(
            nunOrder: 4,
            date: "12/12/2020 14:25:21",
            status: "Completo",
            total: 125.24),
        Orders(
            nunOrder: 5,
            date: "12/12/2020 14:25:21",
            status: "Pendente",
            total: 154.47),
      ];
}

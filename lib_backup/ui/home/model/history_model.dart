class HistoryModel {
  final String name;
  final int price;
  final DateTime dateTime;

  HistoryModel(
      {required this.name, required this.price, required this.dateTime});
}

List<HistoryModel> histories = [
  HistoryModel(
    name: 'Penjualan',
    price: 50000,
    dateTime: DateTime(2025, 2, 1, 3, 23),
  ),
  HistoryModel(
    name: 'Penjualan',
    price: 20000,
    dateTime: DateTime(2025, 2, 1, 3, 23),
  ),
  HistoryModel(
    name: 'Penjualan',
    price: 150000,
    dateTime: DateTime(2025, 2, 1, 3, 23),
  ),
  HistoryModel(
    name: 'Penjualan',
    price: 40000,
    dateTime: DateTime(2025, 2, 1, 3, 23),
  ),
];

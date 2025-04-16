class HistoryModel {
  final String name;
  final int price;
  final DateTime dateTime;

  HistoryModel(
      {required this.name, required this.price, required this.dateTime});
}

List<HistoryModel> history = [
  HistoryModel(name: 'Penjualan', price: 50000, dateTime: DateTime.now()),
  HistoryModel(name: 'Penjualan', price: 20000, dateTime: DateTime.now()),
  HistoryModel(name: 'Penjualan', price: 150000, dateTime: DateTime.now()),
  HistoryModel(name: 'Penjualan', price: 40000, dateTime: DateTime.now()),
];

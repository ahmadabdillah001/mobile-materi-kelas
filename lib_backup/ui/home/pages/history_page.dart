import 'package:flutter/material.dart';

import 'package:tiket_wisata/core/core.dart';
import 'package:tiket_wisata/ui/home/model/history_model.dart';

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    Map<String, List<HistoryModel>> groubHistory = {};
    for (var data in histories) {
      final monthYear = '${data.dateTime.toFormattedMonth()} ${data.dateTime.year}';
      if (!groubHistory.containsKey(monthYear)) {
        groubHistory[monthYear] = [];
      }
      groubHistory[monthYear]!.add(data);
    }
    return const Placeholder();
  }
}
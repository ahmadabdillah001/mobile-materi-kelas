import 'package:flutter/material.dart';

import 'package:tiket_wisata/core/core.dart';
import 'package:tiket_wisata/ui/home/model/history_model.dart';
import 'package:tiket_wisata/ui/home/widgets/history_card.dart';

class HistoryPage extends StatelessWidget {
  const HistoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    Map<String, List<HistoryModel>> groubHistory = {};

    for (var data in histories) {
      final monthYear =
          '${data.dateTime.toFormattedMonth()} ${data.dateTime.year}';
      if (!groubHistory.containsKey(data.dateTime.toFormattedMonth())) {
        groubHistory[monthYear] = [];
      }
      groubHistory[monthYear]!.add(data);
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('Transaction History'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: groubHistory.entries.map(
          (entry) {
            final monthYear = entry.key;
            final data = entry.value;
            final total = data.fold(
                0, (previousValue, element) => previousValue + element.price);
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 21),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        monthYear,
                        style: const TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        total.currencyFormatRp,
                        style: const TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                          color: AppColors.primary,
                        ),
                      )
                    ],
                  ),
                  Divider(
                    thickness: 3,
                    color: AppColors.primary,
                    endIndent: MediaQuery.of(context).size.width - 60,
                  ),
                  ...data.map((e) => HistoryCard(item: e)).toList(),
                ],
              ),
            );
          },
        ).toList(),
      ),
    );
  }
}

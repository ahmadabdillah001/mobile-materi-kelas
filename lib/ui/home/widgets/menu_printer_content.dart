import 'package:flutter/material.dart';
import 'package:tiket_wisata/core/constant/constant.dart';
import 'package:tiket_wisata/ui/home/model/printer_model.dart';

class MenuPrinterContent extends StatelessWidget {
  final PrinterModel data;
  const MenuPrinterContent({
    super.key,
    required this.data,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.stroke),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Name : ${data.name}',
            style: const TextStyle(
              fontWeight: FontWeight.w700,
            ),
          ),
          Text(
            'Address : ${data.address}',
            style: const TextStyle(
              fontSize: 12,
              color: AppColors.grey
            ),
          )
        ],
      ),
    );
  }
}

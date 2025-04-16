import 'package:flutter/widgets.dart';
import 'package:tiket_wisata/core/core.dart';
import 'package:tiket_wisata/ui/home/model/product_model.dart';

class OrderDetailCard extends StatelessWidget {
  final ProductModel item;
  const OrderDetailCard({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.stroke),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            item.productName,
            style: const TextStyle(
              fontSize: 15,
            ),
          ),
          Text(
            item.type,
            style: const TextStyle(
              fontSize: 11,
            ),
          ),
          const SpaceHeight(8),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '${item.price.currencyFormatRp} x ${item.quantity}',
                style: const TextStyle(
                  fontWeight: FontWeight.bold
                ),
              ),
              Text(
                (item.price * item.quantity).currencyFormatRp,
                style: const TextStyle(
                  fontWeight: FontWeight.bold
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

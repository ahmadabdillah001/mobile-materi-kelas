import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:tiket_wisata/core/core.dart';
import 'package:timer_count_down/timer_count_down.dart';

class PaymentQrisDialog extends StatelessWidget {
  const PaymentQrisDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Text('Show this QR code to costumer'),
          const SpaceHeight(24),
          InkWell(
            onTap: () {},
            child: SizedBox(
              height: 200,
              width: 200,
              child: QrImageView(
                data: 'bayar-qris',
                version: QrVersions.auto,
                size: 100,
              ),
            ),
          ),
          const SpaceHeight(24),
          Countdown(
            seconds: 60,
            build: (context, time) => Text.rich(
              TextSpan(
                text: '${time.toInt()}s.',
                style: const TextStyle(
                    color: AppColors.primary, fontWeight: FontWeight.bold),
              ),
            ),
            onFinished: () {},
          ),
        ],
      ),
    );
  }
}

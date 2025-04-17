import 'package:flutter/material.dart';
import 'package:tiket_wisata/core/core.dart';

class PaymentTunaiDialog extends StatefulWidget {
  final int totalPrice;
  const PaymentTunaiDialog({super.key, required this.totalPrice});

  @override
  State<PaymentTunaiDialog> createState() => _PaymentTunaiDialogState();
}

class _PaymentTunaiDialogState extends State<PaymentTunaiDialog> {
  final nominalController = TextEditingController();
  int paidIndex = -1;

  @override
  void initState() {
    nominalController.text = widget.totalPrice.currencyFormatRp;
    super.initState();
  }

  @override
  void dispose() {
    nominalController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const SpaceHeight(12),
          CustomTextField(
            controller: nominalController,
            label: 'Masukan Nominal',
          ),
          const SpaceHeight(20),
          Row(
            children: [
              Flexible(
                child: Button.outlined(
                  onPressed: () => setState(() => paidIndex = 0),
                  label: 'Uang Pas',
                  borderRadius: 10,
                  fontSize: 14,
                  textColor: paidIndex == 0 ? AppColors.white : AppColors.grey,
                  color:
                      paidIndex == 0 ? AppColors.primary : Colors.transparent,
                ),
              ),
              const SpaceHeight(20),
              Flexible(
                child: Button.outlined(
                  onPressed: () => setState(() => paidIndex = 2),
                  label: 20000.currencyFormatRp,
                  borderRadius: 10,
                  fontSize: 14,
                  textColor: paidIndex == 2 ? AppColors.white : AppColors.grey,
                  color:
                      paidIndex == 2 ? AppColors.primary : Colors.transparent,
                ),
              ),
              const SpaceHeight(20),
              Flexible(
                child: Button.outlined(
                  onPressed: () => setState(() => paidIndex = 3),
                  label: 20000.currencyFormatRp,
                  borderRadius: 10,
                  fontSize: 14,
                  textColor: paidIndex == 3 ? AppColors.white : AppColors.grey,
                  color:
                      paidIndex == 3 ? AppColors.primary : Colors.transparent,
                ),
              ),
            ],
          ),
          const SpaceHeight(24),
          Button.filled(
            disabled: paidIndex == -1,
            onPressed: () {},
            label: 'Bayar',
            fontSize: 16,
            borderRadius: 10,
          ),
        ],
      ),
    );
  }
}

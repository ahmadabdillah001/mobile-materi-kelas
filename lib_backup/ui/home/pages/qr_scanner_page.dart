import 'package:flutter/material.dart';
import 'package:mobile_scanner/mobile_scanner.dart';
import 'package:tiket_wisata/ui/home/model/product_model.dart';
import '../../../core/core.dart';
import 'order_detail_page.dart';

class QrScannerPage extends StatefulWidget {
  const QrScannerPage({super.key});

  @override
  State<QrScannerPage> createState() => _QrScannerPageState();
}

class _QrScannerPageState extends State<QrScannerPage> {
  Barcode? _barcode;

  void _handleBarcode(BarcodeCapture barcodes) {
    if (mounted) {
      _barcode = barcodes.barcodes.firstOrNull;
      if (_barcode != null) {
        debugPrint('Scan Result -> ${{_barcode!.displayValue}}');
        context.pushReplacement(OrderDetailPage(products: products));
      }
    }
  }

  @override
  Widget build(BuildContext){
    return Scaffold(
      appBar: AppBar(
        title: const Text('Qr Scanner'),
        leading: GestureDetector(
          onTap: () => context.pop(),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Assets.images.back.image(),
          ),
        ),
      ),
      body: MobileScanner(
        onDetect: _handleBarcode,
      ),
    );
  }
}
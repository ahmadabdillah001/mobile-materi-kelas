import 'package:flutter/material.dart';
import 'package:tiket_wisata/core/core.dart';
import 'package:tiket_wisata/ui/home/model/printer_model.dart';
import 'package:tiket_wisata/ui/home/widgets/menu_printer_button.dart';
import 'package:tiket_wisata/ui/home/widgets/menu_printer_content.dart';

class SettingPrinterPage extends StatefulWidget {
  const SettingPrinterPage({super.key});

  @override
  State<SettingPrinterPage> createState() => _SettingPrinterPageState();
}

class _SettingPrinterPageState extends State<SettingPrinterPage> {
  int selectIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Kelola Printer'),
        leading: GestureDetector(
          onTap: () => context.pop(),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Assets.images.back.image(),
          ),
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.all(24),
        children: [
          Container(
            width: MediaQuery.of(context).size.width / 2,
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
                color: AppColors.stroke,
                borderRadius: BorderRadius.circular(8)),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                MenuPrinterButton(
                  label: 'Search',
                  onPressed: () {
                    selectIndex = 0;
                    setState(() {});
                  },
                  isActive: selectIndex == 0,
                ),
                MenuPrinterButton(
                  label: 'Disconnect',
                  onPressed: () {
                    selectIndex = 1;
                    setState(() {});
                  },
                  isActive: selectIndex == 1,
                ),
                MenuPrinterButton(
                  label: 'Test',
                  onPressed: () {
                    selectIndex = 2;
                    setState(() {});
                  },
                  isActive: selectIndex == 2,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class _Body extends StatelessWidget {
  final int selectIndex;
  final List<PrinterModel> datas;
  const _Body({required this.selectIndex, required this.datas});

  @override
  Widget build(BuildContext context) {
    return datas.isEmpty
        ? const Text('No data afailable')
        : Container(
            padding: const EdgeInsets.all(24),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              boxShadow: [
                BoxShadow(
                  offset: const Offset(0, 5),
                  color: AppColors.black.withAlpha(25),
                  blurRadius: 30,
                  spreadRadius: 0,
                  blurStyle: BlurStyle.outer,
                ),
              ],
            ),
            child: ListView.separated(
              itemBuilder: (context, index) => MenuPrinterContent(
                data: datas[index],
              ),
              separatorBuilder: (context, index) => const SpaceHeight(16),
              itemCount: datas.length,
            ),
          );
  }
}

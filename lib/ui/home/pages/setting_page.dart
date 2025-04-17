import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:tiket_wisata/core/core.dart';
import 'package:tiket_wisata/ui/home/widgets/settign_button.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Setting'),
      ),
      body: GridView.count(
        padding: const EdgeInsets.all(24),
        crossAxisCount: 3,
        crossAxisSpacing: 15,
        mainAxisSpacing: 24,
        children: [
          SettignButton(
            iconPath: Assets.icons.settings.printer.path,
            title: 'Printer',
            subTitle: 'Kelola Printer',
            onPressed: () {},
          ),
          SettignButton(
            iconPath: Assets.icons.settings.logout.path,
            title: 'Logout',
            subTitle: 'Keluar Dari Aplikasi',
            onPressed: () {},
          ),
          SettignButton(
            iconPath: Assets.icons.settings.syncData.path,
            title: 'Sync Data',
            subTitle: 'Singkronasi online',
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}

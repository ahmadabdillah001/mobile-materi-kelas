import 'package:flutter/material.dart';
import 'package:tiket_wisata/core/extensions/build_context_ext.dart';
import 'package:tiket_wisata/ui/home/pages/history_page.dart';
import 'package:tiket_wisata/ui/home/pages/order_page.dart';
import 'package:tiket_wisata/ui/home/pages/qr_scanner_page.dart';
import 'package:tiket_wisata/ui/home/pages/ticket_page.dart';

import '../../../core/core.dart';
import '../widgets/nav_item.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectedIndex = 0;
  final _page = [
    const OrderPage(),
    const TicketPage(),
    const HistoryPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _page[_selectedIndex],
      bottomNavigationBar: Container(
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.vertical(
            top: Radius.circular(30),
          ),
          color: AppColors.white,
          boxShadow: [
            BoxShadow(
              offset: const Offset(0, -2),
              blurRadius: 30.0,
              blurStyle: BlurStyle.outer,
              spreadRadius: 0,
              color: AppColors.black.withAlpha(25),
            ),
          ],
        ),
        child: Stack(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                NavItem(
                  iconPath: Assets.icons.nav.home.path,
                  label: 'Home',
                  isActive: _selectedIndex == 0,
                  onTap: () => _onItemTapped(0),
                ),
                NavItem(
                  iconPath: Assets.icons.nav.ticket.path,
                  label: 'Ticket',
                  isActive: _selectedIndex == 1,
                  onTap: () => _onItemTapped(1),
                ),
                const SpaceWidth(10.0),
                NavItem(
                  iconPath: Assets.icons.nav.history.path,
                  label: 'History',
                  isActive: _selectedIndex == 2,
                  onTap: () => _onItemTapped(2),
                ),
                NavItem(
                  iconPath: Assets.icons.nav.setting.path,
                  label: 'Setting',
                  isActive: _selectedIndex == 3,
                  onTap: () => _onItemTapped(3),
                ),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: GestureDetector(
        onTap: () => context.push(
          const QrScannerPage(),
        ),
        child: Container(
          padding: const EdgeInsets.all(8),
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: AppColors.primary,
          ),
          child: Assets.icons.nav.scan.svg(),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}

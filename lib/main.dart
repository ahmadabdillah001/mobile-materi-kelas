import 'package:flutter/material.dart';
// import 'package:tiket_wisata/ui/home/pages/main_page.dart';
// import 'package:tiket_wisata/ui/home/pages/order_page.dart';
import 'package:tiket_wisata/ui/intro/splash_page.dart';
// import 'package:tiket_wisata/ui/intro/login_page.dart';
// import 'package:tiket_wisata/ui/home/pages/main_page.dart';
// import 'package:tiket_wisata/ui/intro/login_page.dart';
// import 'package:tiket_wisata/ui/intro/splash_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashPage(),
      // home: OrderPage(),
      // routes: {
      //   '/': (context) => const SplashPage(),
      //   '/login-page': (context) => LoginPage(),
      //   '/main-page': (context) => const MainPage(),
      // },
    );
  }
}

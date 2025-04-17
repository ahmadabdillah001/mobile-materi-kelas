import 'dart:async';

import 'package:flutter/material.dart';
import 'package:tiket_wisata/ui/intro/login_page.dart';
import '../../core/core.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  // @override
  // void initState() {
  //   super.initState();
  //   Timer(const Duration(seconds: 2), () {
  //     Navigator.pushNamedAndRemoveUntil(
  //       context,
  //       '/login-page',
  //       (route) => false,
  //     );
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    Future.delayed(
      const Duration(seconds: 2),
      () => context.pushReplacement(const LoginPage())
    );
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(96.0),
        child: Center(
          child: Assets.images.logoBlue.image(),
        ),
      ),
      bottomNavigationBar: SizedBox(
        height: 100.0,
        child: Align(
          alignment: Alignment.center,
          child: Assets.images.logoIdn.image(height: 60),
        ),
      ),
    );
  }
}

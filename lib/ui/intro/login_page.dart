import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tiket_wisata/core/core.dart';
import 'package:tiket_wisata/ui/home/pages/main_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();

  final _emailController = TextEditingController();

  final _passController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: AppColors.primary,
        appBar: AppBar(
            backgroundColor: Colors.transparent,
            centerTitle: true,
            toolbarHeight: 210,
            title: Assets.images.logoWhite.image(width: 194)),
        body: Container(
          width: double.infinity,
          height: 500,
          decoration: const BoxDecoration(
            color: AppColors.white,
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(20),
              topLeft: Radius.circular(20),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 28,
              vertical: 44,
            ),
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Email',
                    style: GoogleFonts.outfit(
                      color: AppColors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  TextField(
                    controller: _emailController,
                    decoration: const InputDecoration(
                      hintText: 'Email loket',
                    ),
                  ),
                  const SizedBox(
                    height: 36,
                  ),
                  Text(
                    'Password',
                    style: GoogleFonts.outfit(
                      color: AppColors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  TextField(
                    controller: _passController,
                    obscureText: true,
                    decoration: const InputDecoration(
                      hintText: 'Masukkan Password',
                    ),
                  ),
                  const SizedBox(
                    height: 36
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.primary,
                      minimumSize: const Size(319, 50),
                    ),
                    onPressed: () {
                      context.pushReplacement(const MainPage());
                    },
                    child: Text(
                      'Login',
                      style: GoogleFonts.outfit(
                        color: AppColors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  const SpaceHeight(75),
                  Center(
                    child: SizedBox(
                      height: 66,
                      child: Assets.images.logoIdn.image(height: 66)
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

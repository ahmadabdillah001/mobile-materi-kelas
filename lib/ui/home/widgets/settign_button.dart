import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tiket_wisata/core/core.dart';

class SettignButton extends StatelessWidget {
  String iconPath;
  String title;
  String subTitle;
  VoidCallback onPressed;

  SettignButton({
    super.key,
    required this.iconPath,
    required this.title,
    required this.subTitle,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration:
            BoxDecoration(borderRadius: BorderRadius.circular(12), boxShadow: [
          BoxShadow(
            offset: const Offset(0, 5),
            blurRadius: 30,
            spreadRadius: 0,
            blurStyle: BlurStyle.outer,
            color: Colors.black.withAlpha(25),
          ),
        ]),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(iconPath),
            const SpaceHeight(10),
            Text(
              title,
              style: const TextStyle(
                fontWeight: FontWeight.w600,
              ),
            ),
            Text(
              subTitle,
              style: const TextStyle(
                fontSize: 12,
                color: AppColors.grey,
              ),
            )
          ],
        ),
      ),
    );
  }
}

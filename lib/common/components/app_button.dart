import 'package:flutter/material.dart';
import 'package:hey_food/common/components/app_colors.dart';

class AppButton extends StatelessWidget {
  AppButton(
      {super.key,
      required this.text,
      required this.onPressed,
      this.borderRadius = 10});
  final String text;
  final Function()? onPressed;
  double borderRadius;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.primaryColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius),
          ),
        ),
        child: Text(
          text,
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18),
        ));
  }
}

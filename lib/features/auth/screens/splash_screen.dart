import 'package:flutter/material.dart';
import 'package:hey_food/common/components/app_colors.dart';
import 'package:hey_food/features/auth/screens/login_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    navigateToLoginScreen();
  }

  void navigateToLoginScreen() {
    Future.delayed(const Duration(seconds: 5), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => const LoginScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Container(
          color: AppColors.primaryColor,
        ),
        Center(
          child: Image.asset(
            "assets/images/heyFoodLogo.png",
            fit: BoxFit.contain,
          ),
        ),
      ],
    ));
  }
}

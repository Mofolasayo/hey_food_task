import 'package:flutter/material.dart';
import 'package:hey_food/common/components/app_button.dart';
import 'package:hey_food/features/dashboard/pages/home_page.dart';
import 'package:lottie/lottie.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset('assets/images/loginLogo.png'),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 80,
                ),
                Align(
                  alignment: Alignment.center,
                  child: Lottie.asset('assets/lottie/login.json'),
                ),
                const SizedBox(
                  height: 50,
                ),
                const Text(
                  'Enter your phone number',
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Row(
                  children: [
                    SizedBox(
                      width: 100,
                      child: TextField(
                        enabled: false,
                        decoration: InputDecoration(
                            disabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Color.fromARGB(85, 9, 9, 9)),
                            ),
                            border: OutlineInputBorder(),
                            hintText: "🇳🇬 +234",
                            hintStyle:
                                TextStyle(color: Color.fromARGB(255, 9, 9, 9))),
                      ),
                    ),
                    SizedBox(width: 10),
                    SizedBox(
                      width: 290,
                      child: TextField(
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                            hintText: "Phone number",
                            disabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Color.fromARGB(85, 9, 9, 9)),
                            ),
                            border: OutlineInputBorder(),
                            hintStyle: TextStyle(color: Colors.grey)),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                SizedBox(
                  width: 500,
                  height: 60,
                  child: AppButton(
                    text: "Continue",
                    onPressed: () {
                      Navigator.of(context).pushReplacement(MaterialPageRoute(
                          builder: (context) => const HomePage()));
                    },
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Align(
                  alignment: Alignment.center,
                  child: Text(
                    "Sign in as guest",
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

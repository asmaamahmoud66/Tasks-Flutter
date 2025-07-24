import 'package:flutter/material.dart';
import 'app_colors.dart';
import 'login_screen_conent.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteApp,
      body: Stack(
        children: [
          // سهم الرجوع في الأعلى يسار
          Positioned(
            top: 40,
            left: 10,
            child: IconButton(
              icon: const Icon(Icons.arrow_back_ios, color: Colors.black),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ),

          // المحتوى في الأسفل
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 400,
              decoration: const BoxDecoration(
                color: AppColors.mainColor,
                borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
              ),
              child: const LoginScreenConente(),
            ),
          ),
        ],
      ),
    );
  }
}

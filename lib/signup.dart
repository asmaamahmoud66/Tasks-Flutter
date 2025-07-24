import 'package:flutter/material.dart';
import 'app_colors.dart';
import 'signup_screen_content.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteApp,
      body: Stack(
        children: [
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
              height: 500,
              decoration: const BoxDecoration(
                color: AppColors.mainColor,
                borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
              ),
              child: const SignUpScreenContent(),
            ),
          ),
        ],
      ),
    );
  }
}

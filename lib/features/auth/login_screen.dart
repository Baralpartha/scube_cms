import 'package:flutter/material.dart';

import '../../core/constants/app_colors.dart';
import '../../core/constants/app_styles.dart';
 import '../../core/widgets/custom_textfield.dart';
 import '../../core/widgets/primary_button.dart';
 import '../../core/routes/app_routes.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // 💡 Overflow সমস্যার সমাধান: SafeArea ব্যবহার করা হলো যাতে নোটিফিকেশন বার কনটেন্ট ঢেকে না দেয়
    return Scaffold(
      backgroundColor: AppColors.primaryBlue,
      body: SafeArea(
        child: Column(
          children: [
            // 🔵 Top Blue Section (NO radius, FIXED height)
            Container(
              height: 300, // স্থির উচ্চতা
              width: double.infinity,
              color: AppColors.primaryBlue,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/images/sube.png',
                    width: 96,
                    height: 98,
                    fit: BoxFit.contain,
                  ),
                  const SizedBox(height: 10),
                  const Text('SCUBE', style: AppStyles.titleWhite),
                  const Text(
                    'Control & Monitoring System',
                    style: AppStyles.subTitleWhite,
                  ),
                ],
              ),
            ),

            // ⚪ Bottom White Section (TOP radius)
            // 💡 সমাধান: Expanded এর ভেতরে SingleChildScrollView ব্যবহার করা হলো।
            // এটি নিশ্চিত করে যে যেকোনো উচ্চতার কনটেন্ট স্ক্রল করা যাবে,
            // বিশেষত যখন কীবোর্ড খোলে তখন Overflow হয় না।
            Expanded(
              child: Container(
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                ),
                child: SingleChildScrollView( // <--- এইখানে পরিবর্তন
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisSize: MainAxisSize.min, // কনটেন্ট অনুযায়ী উচ্চতা নেয়
                    children: [
                      // 🔹 Login Text (Top Center)
                      const Text(
                        'Login',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),

                      const SizedBox(height: 30),

                      // 🔹 Username
                      const CustomTextField(hint: 'Username'), // const যোগ করা হলো

                      const SizedBox(height: 15),

                      // 🔹 Password
                      const CustomTextField( // const যোগ করা হলো
                        hint: 'Password',
                        isPassword: true,
                      ),

                      const SizedBox(height: 8),

                      // 🔹 Forget password (Right aligned)
                      const Align( // const যোগ করা হলো
                        alignment: Alignment.centerRight,
                        child: Text(
                          'Forget password?',
                          style: TextStyle(
                            color: Color(0xFF5E5E5E),
                            fontSize: 12,
                          ),
                        ),
                      ),

                      const SizedBox(height: 25),

                      // 🔹 Login Button
                      PrimaryButton(
                        title: 'Login',
                        onTap: () => Navigator.pushReplacementNamed(
                          context,
                          AppRoutes.dashboard,
                        ),
                      ),

                      const SizedBox(height: 20),

                      // 🔹 Register Text (Center)
                      Center(
                        child: RichText(
                          text: TextSpan(
                            text: "Don’t have any account? ",
                            style: const TextStyle(color: Colors.black, fontSize: 12),
                            children: [
                              TextSpan(
                                text: 'Register Now',
                                style: TextStyle(
                                  color: AppColors.primaryBlue,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../app.dart';
import '../../core/constants/app_colors.dart';
import '../../core/widgets/custom_textfield.dart';
import '../../core/widgets/primary_button.dart';
import '../../core/routes/app_routes.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryBlue,
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: 336.h, // স্থির উচ্চতা
              width: double.infinity,
              color: AppColors.primaryBlue,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/images/sube.png',
                    width: 96.w,
                    height: 98.h,
                    fit: BoxFit.contain,
                  ),
                  SizedBox(height: 20.h),
                  Text(
                    'SCUBE',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24.sp,
                      fontWeight: FontWeight.w600,
                      height: 1.0.h,
                    ),
                  ),
                  Text(
                    'Control & Monitoring System',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.sp,
                      fontWeight: FontWeight.w600,
                      height: 1.0.h,
                    ),
                  ),
                ],
              ),
            ),

            Expanded(
              child: Container(
                width: double.infinity.w,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30.r),
                    topRight: Radius.circular(30.r),
                  ),
                ),
                child: SingleChildScrollView(
                  padding: EdgeInsets.symmetric(horizontal: 12.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisSize:
                        MainAxisSize.min,
                    children: [
                      SizedBox(
                        height: 32.h,
                      ),
                      Text(
                        'Login',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 24.sp,
                          height: 1.5.h,
                          fontWeight: FontWeight.bold,
                        ),
                      ),

                      SizedBox(height: 24.h),


                      const CustomTextField(
                        hint: 'Username',
                      ),

                      SizedBox(height: 12.h),

                      const CustomTextField(
                        hint: 'Password',
                        isPassword: true,
                      ),

                      SizedBox(height: 8.h),

                      Align(
                        alignment: Alignment.centerRight,
                        child: Text(
                          'Forget password?',
                          style: TextStyle(
                            color: Color(0xFF5E5E5E),
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w500,
                            height: 1.0.h,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      ),

                      SizedBox(height: 20.h),
                      PrimaryButton(
                        title: 'Login',
                        onTap: () {
                          designSizeNotifier.value = const Size(360, 836);
                          Navigator.pushNamed(context, AppRoutes.dashboard);
                        },
                      ),

                      SizedBox(height: 8.h),
                      Center(
                        child: RichText(
                          text: TextSpan(
                            text: "Don’t have any account? ",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w500,
                              height: 1.0.h,
                            ),
                            children: [
                              TextSpan(
                                text: 'Register Now',
                                style: TextStyle(
                                  color: AppColors.primaryBlue,
                                  fontWeight: FontWeight.w500,
                                  height: 1.0.h,
                                  fontSize: 14.sp,
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

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../constants/app_colors.dart';

class PrimaryButton extends StatelessWidget {
  final String title;
  final VoidCallback onTap;

  const PrimaryButton({
    super.key,
    required this.title,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 336.w,   // Figma width
      height: 56.h,   // Figma height
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.primaryBlue,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.r), // Figma radius
          ),
        ),
        onPressed: onTap,
        child: Text(
          title,
          style: TextStyle(
            color: Color(0xFFFFFFFF), // Login text color
            fontSize: 18.sp,
            fontWeight: FontWeight.w600,
            height: 1.0.h,
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
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
      width: 336,   // Figma width
      height: 56,   // Figma height
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.primaryBlue,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10), // Figma radius
          ),
        ),
        onPressed: onTap,
        child: Text(
          title,
          style: const TextStyle(
            color: Color(0xFFFFFFFF), // Login text color
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}

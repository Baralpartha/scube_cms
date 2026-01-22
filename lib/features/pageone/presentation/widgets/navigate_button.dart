import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NavigateButton extends StatelessWidget {
  final String title;
  final VoidCallback onTap;

  const NavigateButton({
    super.key,
    required this.title,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(4.r),
      child: Container(
        width: 336.w,
        height: 32.h,
        decoration: BoxDecoration(
          color: const Color(0xFF06B6D4),
          borderRadius: BorderRadius.circular(4.r),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              title,
              style: TextStyle(color: Colors.white, fontSize: 12.sp, fontWeight: FontWeight.w600),
            ),
            SizedBox(width: 8.w),
            Icon(Icons.arrow_forward_ios_rounded, color: Colors.white, size: 14.sp),
          ],
        ),
      ),
    );
  }
}

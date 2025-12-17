import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DateFilter extends StatelessWidget {
  const DateFilter({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _smallRadio("Today Data", false),
        SizedBox(width: 20.w),
        _smallRadio("Custom Date Data", true),
      ],
    );
  }

  Widget _smallRadio(String text, bool isActive) {
    return Row(
      children: [
        CircleAvatar(radius: 4.r, backgroundColor: isActive ? Colors.blue : Colors.grey),
        SizedBox(width: 6.w),
        Text(text, style: TextStyle(fontSize: 12.sp, color: isActive ? Colors.blue : Colors.grey)),
      ],
    );
  }
}
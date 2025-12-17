import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CircularGauge extends StatelessWidget {
  final String value;
  final String unit;
  final double progress;

  const CircularGauge({
    super.key,
    required this.value,
    required this.unit,
    required this.progress,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        SizedBox(
          width: 130.w,
          height: 130.w,
          child: CircularProgressIndicator(
            value: progress,
            strokeWidth: 20.w,
            strokeCap: StrokeCap.round,
            backgroundColor: const Color(0xFF398FC9).withOpacity(0.2),
            valueColor: const AlwaysStoppedAnimation<Color>(Color(0xFF398FC9)),
          ),
        ),
        Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              unit,
              style: TextStyle(fontSize: 12.sp, color: const Color(0xFF04063E)),
            ),
            SizedBox(height: 4.h),
            Text(
              value,
              style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.bold, color: const Color(0xFF04063E)),
            ),
          ],
        )
      ],
    );
  }
}
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ThermometerWidget extends StatelessWidget {
  final double height;
  final double width;
  final double fillPercent;

  const ThermometerWidget({
    super.key,
    required this.height,
    required this.width,
    required this.fillPercent,
  });

  @override
  Widget build(BuildContext context) {
    final fillH = (height * fillPercent).clamp(0.0, height);

    return SizedBox(
      height: height + 10.h,
      width: width + 10.w,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Positioned(
            bottom: 10.h,
            child: Container(
              width: width,
              height: height,
              decoration: BoxDecoration(
                color: const Color(0xFFF3F4F6),
                borderRadius: BorderRadius.circular(20.r),
                border: Border.all(color: const Color(0xFFB6B8D0)),
              ),
            ),
          ),
          Positioned(
            bottom: 10.h,
            child: SizedBox(
              width: width,
              height: height,
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  width: width,
                  height: fillH,
                  decoration: BoxDecoration(
                    color: const Color(0xFFEF4444),
                    borderRadius: BorderRadius.circular(20.r),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            child: Container(
              width: (width + 10.w),
              height: (width + 10.w),
              decoration: BoxDecoration(
                color: const Color(0xFFEF4444),
                shape: BoxShape.circle,
                border: Border.all(color: const Color(0xFFB6B8D0)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

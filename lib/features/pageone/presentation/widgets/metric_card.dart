import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../domain/models/metric_item.dart';

class MetricCard extends StatelessWidget {
  final MetricItem item;
  const MetricCard({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 107.w,
      height: 37.h,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 6.w, vertical: 5.h),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8.r),
          border: Border.all(color: const Color(0xFFE5E7EB)),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.04),
              blurRadius: 6,
              offset: const Offset(0, 2),
            )
          ],
        ),
        child: Row(
          children: [
            Container(
              width: 18.w,
              height: 18.w,
              decoration: BoxDecoration(
                color: item.iconBg,
                borderRadius: BorderRadius.circular(4.r),
              ),
              child: Padding(
                padding: EdgeInsets.all(2.w),
                child: Image.asset(
                  item.iconPath,
                  fit: BoxFit.contain,
                ),
              ),
            ),
            SizedBox(width: 6.w),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    item.value,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontSize: 11.sp,
                      fontWeight: FontWeight.w700,
                      color: const Color(0xFF111827),
                      height: 1,
                    ),
                  ),
                  SizedBox(height: 2.h),
                  Text(
                    item.label,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontSize: 8.sp,
                      fontWeight: FontWeight.w500,
                      color: const Color(0xFF6B7280),
                      height: 1,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

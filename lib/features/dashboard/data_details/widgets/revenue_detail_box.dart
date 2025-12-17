import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RevenueDetailBox extends StatelessWidget {
  const RevenueDetailBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 312.w,
      padding: EdgeInsets.all(12.w),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12.r),
        border: Border.all(color: const Color(0xFFB6B8D0), width: 1.w),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            children: [
              Icon(Icons.bar_chart, color: const Color(0xFF04063E), size: 18.sp),
              SizedBox(width: 8.w),
              Text(
                "Data & Cost Info",
                style: TextStyle(
                  fontSize: 12.sp, // font size 12px
                  fontWeight: FontWeight.bold,
                  color: const Color(0xFF04063E),
                ),
              ),
              const Spacer(),
              Container(
                width: 24.w,
                height: 24.w,
                decoration: const BoxDecoration(
                  color: Color(0xFF0091FF),
                  shape: BoxShape.circle,
                ),
                child: Icon(Icons.expand_less, color: Colors.white, size: 18.sp),
              ),
            ],
          ),
          SizedBox(height: 8.h),
          const Divider(color: Color(0xFFB6B8D0)),
          SizedBox(height: 8.h),

          _revenueItem("Data 1", "2798.50 (29.53%)", "35689"),
          _revenueItem("Data 2", "2798.50 (29.53%)", "35689"),
          _revenueItem("Data 3", "2798.50 (29.53%)", "35689"),
        ],
      ),
    );
  }

  Widget _revenueItem(String label, String data, String cost) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 4.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                "$label  : ",
                style: TextStyle(
                  fontSize: 12.sp,
                  color: Colors.grey.shade600,
                ),
              ),
              Text(
                data,
                style: TextStyle(
                  fontSize: 12.sp,
                  fontWeight: FontWeight.bold,
                  color: const Color(0xFF04063E),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Text(
                "Cost ${label.split(' ').last}  : ",
                style: TextStyle(
                  fontSize: 12.sp, // font size 12px
                  color: Colors.grey.shade600,
                ),
              ),
              Text(
                "$cost ৳",
                style: TextStyle(
                  fontSize: 12.sp, // font size 12px
                  fontWeight: FontWeight.bold,
                  color: const Color(0xFF04063E),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
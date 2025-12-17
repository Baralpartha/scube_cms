import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constants/dashbord_color.dart';

class SourceLoadSwitch extends StatelessWidget {
  const SourceLoadSwitch({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 32.h,
      decoration: BoxDecoration(
        color: Color(0xFFE5F4FE),
        borderRadius: BorderRadius.circular(16.r),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min, // To wrap content
        children: [
          // Source (Active)
          Container(
            alignment: Alignment.center,
            height: 32.h,
            padding: EdgeInsets.symmetric(horizontal: 35.w,),
            decoration: BoxDecoration(
              color: kPrimaryBlue,
              borderRadius: BorderRadius.circular(16.r),
            ),
            child: Text(
              'Source',
              style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600, fontSize: 16.sp, height: 1.0.h),
            ),
          ),
          // Load (Inactive)
          Container(
            alignment: Alignment.center,
            height: 32.h,
            padding: EdgeInsets.symmetric(horizontal: 35.w),
            child: Text(
              'Load',
              style: TextStyle(color: kInactiveGrey, fontWeight: FontWeight.w600, fontSize: 16.sp, height: 1.0.h),
            ),
          ),
        ],
      ),
    );
  }
}
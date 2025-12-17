import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../app.dart';
import '../../../core/constants/dashbord_color.dart';

class GridDetailsScreen extends StatelessWidget {
  const GridDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFD9E4F1),
      appBar: _buildAppBar(context),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.0.w, vertical: 12.0.h),
          child: Container(
            height: 700.h,
            width: 312.w,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12.r),
              border: Border.all(color: Color(0xFFB6B8D0)),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset("assets/images/Asset 1@4x 1.png", width: 259.w, height: 193.h),
                SizedBox(height: 12.h),
                Text("No data is here,\nplease wait.", textAlign: TextAlign.center, style: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w400, height: 1.0.h, color: Color(0xFF5E5E5E))),
              ],
            ),
          ),
        ),
      ),
    );
  }

  AppBar _buildAppBar(BuildContext context) {
    return AppBar(
      elevation: 0,
      centerTitle: true,
      backgroundColor: Colors.white,
      leading: Padding(
        padding: EdgeInsets.only(left: 15.0.w),
        child: IconButton(
          icon: Icon(Icons.arrow_back_rounded, color: Colors.black, size: 24.sp),
          onPressed: () {
            designSizeNotifier.value = const Size(360, 800);
            Navigator.pop(context);
          },
        ),
      ),
      title: Text(
        'SCM',
        style: TextStyle(color: Colors.black, fontSize: 16.sp, fontWeight: FontWeight.w500),
      ),
      actions: [
        Padding(
          padding: EdgeInsets.only(right: 12.0.w),
          child: Stack(
            children: [
              IconButton(
                icon: Icon(Icons.notifications_none, color: kInactiveGrey, size: 24.sp),
                onPressed: () {
                  // Handle notification button press
                },
              ),
              Positioned(
                right: 12.w,
                top: 14.h,
                child: Container(
                  width: 8,
                  height: 8,
                  decoration: const BoxDecoration(
                    color: Colors.red,
                    shape: BoxShape.circle,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
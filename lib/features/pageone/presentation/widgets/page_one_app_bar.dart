import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../app.dart';

PreferredSizeWidget pageOneAppBar(BuildContext context) {
  return AppBar(
    elevation: 0,
    backgroundColor: Colors.white,
    centerTitle: true,
    leading: IconButton(
      icon: Icon(Icons.arrow_back_rounded, color: Colors.black, size: 22.sp),
      onPressed: () {
        designSizeNotifier.value = const Size(360, 944);
        Navigator.pop(context);
      },
    ),
    title: Text(
      '1st Page',
      style: TextStyle(color: Colors.black, fontSize: 16.sp, fontWeight: FontWeight.w600),
    ),
    actions: [
      Padding(
        padding: EdgeInsets.only(right: 8.w),
        child: Stack(
          children: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.notifications_none, color: Colors.black54, size: 24.sp),
            ),
            Positioned(
              right: 12.w,
              top: 14.h,
              child: Container(
                width: 8.w,
                height: 8.w,
                decoration: const BoxDecoration(color: Colors.red, shape: BoxShape.circle),
              ),
            ),
          ],
        ),
      ),
    ],
  );
}

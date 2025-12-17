import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constants/dashbord_color.dart';

class TopTabBar extends StatelessWidget {
  const TopTabBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 38.h,
      decoration: BoxDecoration(
        color: kInactiveTabBackground,
        borderRadius: BorderRadius.only(topLeft: Radius.circular(10.r), topRight: Radius.circular(10.r)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _buildTab('Summary', true),
          _buildTab('SLD', false),
          _buildTab('Data', false),
        ],
      ),
    );
  }

  Widget _buildTab(String title, bool isActive) {
    return Expanded(
      child: Container(
        alignment: Alignment.center,
        decoration: isActive
            ? BoxDecoration(
          color: kPrimaryBlue, // Active tab color
          borderRadius: BorderRadius.only(topLeft: Radius.circular(10.r), topRight: Radius.circular(10.r)),
          boxShadow: [
            BoxShadow(
              color: kPrimaryBlue.withOpacity(0.3),
              spreadRadius: 1,
              blurRadius: 5,
              offset: const Offset(0, 3),
            ),
          ],
        )
            : BoxDecoration(
          color: Colors.white,),
        child: Text(
          title,
          style: TextStyle(
            color: isActive ? Colors.white : kInactiveGrey,
            fontWeight: FontWeight.w700,
            fontSize: 14.sp,
            height: 1.0.h,
          ),
        ),
      ),
    );
  }
}
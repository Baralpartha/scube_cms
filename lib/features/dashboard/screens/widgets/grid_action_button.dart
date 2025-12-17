import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constants/dashbord_color.dart';
import '../../../../core/routes/app_routes.dart';

class GridActionButton extends StatelessWidget {
  final String title;
  final String icon;

  const GridActionButton({
    super.key,
    required this.title,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      // GridView's childAspectRatio handles the 148x42 ratio
      height: 42.h,
      decoration: BoxDecoration(
        color: kGridButtonBackground, // #FFFFFF
        borderRadius: BorderRadius.circular(8.0.r), // 8px border radius
        border: Border.all(color: Color(0xFFB6B8D0), width: 1),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            spreadRadius: 1,
            blurRadius: 3,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: InkWell(
        onTap: () {
          Navigator.pushNamed(context, AppRoutes.gridDetails);
        },
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 8.0.w),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image.asset(icon, width: 24.w, height: 24.h),
              SizedBox(width: 8.w),
              Expanded(
                child: Text(
                  title,
                  style: TextStyle(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w600,
                    color: Color(0xFF646984),
                    height: 1.0.h
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
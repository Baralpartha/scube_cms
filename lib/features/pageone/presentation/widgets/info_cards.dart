import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class InfoCards extends StatelessWidget {
  const InfoCards({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 336.w,
      child: Column(
        children: [
          _fullWidthTile(
            'Total Num of PV Module',
            '6372 pcs. (585 Wp each)',
            'assets/images/img_18.png',
          ),
          SizedBox(height: 10.h),

          Row(
            children: [
              Expanded(child: _halfWidthTile('Total AC Capacity', '3000 KW', 'assets/images/img_19.png')),
              SizedBox(width: 10.w),
              Expanded(child: _halfWidthTile('Total DC Capacity', '3.727 MWp', 'assets/images/img_24.png')),
            ],
          ),
          SizedBox(height: 10.h),

          Row(
            children: [
              Expanded(child: _halfWidthTile('Date of Commissioning', '17/07/2024', 'assets/images/img_20.png')),
              SizedBox(width: 10.w),
              Expanded(child: _halfWidthTile('Number of Inverter', '30', 'assets/images/img_23.png')),
            ],
          ),
          SizedBox(height: 10.h),

          Row(
            children: [
              Expanded(child: _halfWidthTile('Total AC Capacity', '3000 KW', 'assets/images/img_19.png')),
              SizedBox(width: 10.w),
              Expanded(child: _halfWidthTile('Total DC Capacity', '3.727 MWp', 'assets/images/img_24.png')),
            ],
          ),
        ],
      ),
    );
  }

  Widget _fullWidthTile(String title, String value, String imagePath) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8.r),
        border: Border.all(color: const Color(0xFFE5E7EB)),
      ),
      child: Row(
        children: [
          _iconContainer(imagePath),
          SizedBox(width: 10.w),
          Text(
            '$title  :',
            style: TextStyle(
                fontSize: 10.sp,
                color: const Color(0xFF4B5563),
                fontWeight: FontWeight.w500
            ),
          ),
          SizedBox(width: 6.w),
          Text(
            value,
            style: TextStyle(
                fontSize: 10.sp,
                color: const Color(0xFF030712),
                fontWeight: FontWeight.bold
            ),
          ),
        ],
      ),
    );
  }

  Widget _halfWidthTile(String title, String value, String imagePath) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 8.h),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8.r),
        border: Border.all(color: const Color(0xFFE5E7EB)),
      ),
      child: Row(
        children: [
          _iconContainer(imagePath),
          SizedBox(width: 10.w),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  title,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                      fontSize: 10.sp,
                      color: const Color(0xFF4B5563),
                      fontWeight: FontWeight.w500
                  ),
                ),
                SizedBox(height: 2.h),
                Text(
                  value,
                  style: TextStyle(
                      fontSize: 10.sp,
                      color: const Color(0xFF030712),
                      fontWeight: FontWeight.bold
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _iconContainer(String imagePath) {
    return Container(
      width: 32.w,
      height: 32.w,
      decoration: BoxDecoration(
        color: const Color(0xFFEFF6FF),
        borderRadius: BorderRadius.circular(6.r),
      ),
      child: Center(
        child: Padding(
          padding: EdgeInsets.all(6.w),
          child: Image.asset(
            imagePath,
            fit: BoxFit.contain,
          ),
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constants/dashbord_color.dart';
import '../../data_details/screens/data_details_screen.dart';

class DataViewCard extends StatelessWidget {
  final String title;
  final String data1;
  final String data2;
  final String icon;
  final Color color;
  final Color color2;
  final bool isActive;

  const DataViewCard({
    super.key,
    required this.title,
    required this.data1,
    required this.data2,
    required this.icon,
    required this.color,
    required this.color2,
    required this.isActive,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 71.h,
      child: Card(
        color: kCardBackground,
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(4.r),
        ),
        child: InkWell(
          borderRadius: BorderRadius.circular(4.r),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const DataDetailsScreen(),
              ),
            );
          },
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 12.w),
            child: Row(
              children: [
                Center(
                  child: Image.asset(icon, width: 24.w, height: 24.h),
                ),

                SizedBox(width: 12.w),

                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Container(
                            height: 12.h,
                            width: 12.w,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(2.r),
                              color: color2,
                            ),
                          ),
                          SizedBox(width: 8.w),
                          Text(
                            title,
                            style: TextStyle(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w500,
                              height: 1.0,
                            ),
                          ),
                          SizedBox(width: 6.w),
                          Text(
                            isActive ? '(Active)' : '(Inactive)',
                            style: TextStyle(
                              fontSize: 10.sp,
                              fontWeight: FontWeight.w500,
                              height: 1.0,
                              color: isActive
                                  ? Colors.blue.shade600
                                  : Colors.red.shade600,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 4.h),
                      Text(
                        'Data 1 : $data1',
                        style: TextStyle(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w400,
                          height: 1.0,
                          color: Colors.black87,
                        ),
                      ),
                      SizedBox(height: 4.h),
                      Text(
                        'Data 2 : $data2',
                        style: TextStyle(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w400,
                          height: 1.0,
                          color: Colors.black87,
                        ),
                      ),
                    ],
                  ),
                ),

                /// 🔹 Trailing Arrow (CENTERED)
                Center(
                  child: Icon(
                    Icons.keyboard_arrow_right,
                    color: kInactiveGrey,
                    size: 22.sp,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DataItemTile extends StatelessWidget {
  final String label;
  final String data;
  final String cost;
  final Color color;

  const DataItemTile({
    super.key,
    required this.label,
    required this.data,
    required this.cost,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 8.h),
      padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 6.h),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.r),
        border: Border.all(color: const Color(0xFFE0E0E0)),
      ),
      child: Row(
        children: [
          SizedBox(
            width: 50.w,
            child: Column(
              children: [
                CircleAvatar(radius: 4.r, backgroundColor: color),
                Text(label, style: TextStyle(fontSize: 10.sp, fontWeight: FontWeight.bold)),
              ],
            ),
          ),
          SizedBox(width: 5.w),
          Container(height: 30.h, width: 1.w, color: Colors.grey.shade300),
          SizedBox(width: 10.w),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _rowText("Data", data),
                _rowText("Cost", "$cost ৳"),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _rowText(String title, String value) {
    return Row(
      children: [
        Text("$title", style: TextStyle(fontSize: 11.sp, color: Colors.grey)),
        Text("   : $value", style: TextStyle(fontSize: 11.sp, fontWeight: FontWeight.bold)),
      ],
    );
  }
}
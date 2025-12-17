import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'data_item_tile.dart';

class EnergyDetailBox extends StatelessWidget {
  final String title;
  final String mainValue;

  const EnergyDetailBox({super.key, required this.title, required this.mainValue});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12.w),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.r),
        border: Border.all(color: const Color(0xFFB6B8D0)),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                  title,
                  style: TextStyle(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.bold,
                      color: const Color(0xFF4A4E69)
                  )
              ),
              // এখানে কালার পরিবর্তন করা হয়েছে (#04063E)
              Text(
                  mainValue,
                  style: TextStyle(
                      fontSize: 22.sp,
                      fontWeight: FontWeight.bold,
                      color: const Color(0xFF04063E)
                  )
              ),
            ],
          ),
          SizedBox(height: 15.h),
          const DataItemTile(label: "Data A", data: "2798.50 (29.53%)", cost: "35689", color: Colors.blue),
          const DataItemTile(label: "Data B", data: "72598.50 (35.39%)", cost: "5259689", color: Colors.cyanAccent),
          const DataItemTile(label: "Data C", data: "6598.36 (83.90%)", cost: "5698756", color: Colors.purpleAccent),
        ],
      ),
    );
  }
}
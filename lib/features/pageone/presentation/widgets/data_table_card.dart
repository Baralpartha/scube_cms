import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DataTableCard extends StatelessWidget {
  const DataTableCard({super.key});

  @override
  Widget build(BuildContext context) {
    final rows = const [
      _Row(left: 'AC Max Power', y: '1636.50 kW', t: '2121.88 kW'),
      _Row(left: 'Net Energy', y: '6439.16 kWh', t: '4875.77 kWh'),
      _Row(left: 'Specific Yield', y: '1.25 kWh/kWp', t: '0.94 kWh/kWp'),
      _Row(left: 'Net Energy', y: '6439.16 kWh', t: '4875.77 kWh'),
      _Row(left: 'Specific Yield', y: '1.25 kWh/kWp', t: '0.94 kWh/kWp'),
    ];

    return Container(
      width: 336.w,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12.r),
        border: Border.all(color: const Color(0xFFB6B8D0), width: 1),
      ),
      child: Column(
        children: [
          // Header Row
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 12.h),
            child: Row(
              children: [
                const Expanded(flex: 5, child: SizedBox()),
                Expanded(
                  flex: 4,
                  child: Text(
                    "Yesterday's Data",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w500,
                      color: const Color(0xFF4B5563),
                    ),
                  ),
                ),
                Expanded(
                  flex: 4,
                  child: Text(
                    "Today's Data",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w500,
                      color: const Color(0xFF4B5563),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const Divider(height: 1, thickness: 1, color: Color(0xFFE5E7EB)),

          ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: rows.length,
            itemBuilder: (context, index) {
              final bool hasBg = index == 1 || index == 3;
              return _RowWidget(
                item: rows[index],
                bgColor: hasBg ? const Color(0xFFEEF3F9) : Colors.transparent,
                isLast: index == rows.length - 1,
              );
            },
          ),
        ],
      ),
    );
  }
}

class _Row {
  final String left;
  final String y;
  final String t;
  const _Row({required this.left, required this.y, required this.t});
}

class _RowWidget extends StatelessWidget {
  final _Row item;
  final Color bgColor;
  final bool isLast;

  const _RowWidget({
    required this.item,
    required this.bgColor,
    this.isLast = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: bgColor,
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 12.h),
            child: Row(
              children: [
                Expanded(
                  flex: 5,
                  child: Text(
                    item.left,
                    style: TextStyle(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w400,
                      color: const Color(0xFF1F2937),
                    ),
                  ),
                ),
                Expanded(
                  flex: 4,
                  child: Text(
                    item.y,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w700,
                      color: const Color(0xFF030712),
                    ),
                  ),
                ),
                Expanded(
                  flex: 4,
                  child: Text(
                    item.t,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w700,
                      color: const Color(0xFF030712),
                    ),
                  ),
                ),
              ],
            ),
          ),
          if (!isLast)
            const Divider(height: 1, thickness: 1, color: Color(0xFFE5E7EB)),
        ],
      ),
    );
  }
}
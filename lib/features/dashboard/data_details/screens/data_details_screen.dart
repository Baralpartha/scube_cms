import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../app.dart';
import '../../../../core/constants/dashbord_color.dart';
import '../widgets/view_toggle.dart';
import '../widgets/circular_gauge.dart';
import '../widgets/date_filter.dart';
import '../widgets/energy_detail_box.dart';
import '../widgets/revenue_detail_box.dart';

class DataDetailsScreen extends StatefulWidget {
  const DataDetailsScreen({super.key});

  @override
  State<DataDetailsScreen> createState() => _DataDetailsScreenState();
}

class _DataDetailsScreenState extends State<DataDetailsScreen> {
  bool isDataView = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFD9E4F1),
      appBar: _buildAppBar(context),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 20.h),
          child: Stack(
            clipBehavior: Clip.none,
            alignment: Alignment.topCenter,
            children: [
              Container(
                margin: EdgeInsets.only(top: 25.h),
                padding: EdgeInsets.all(16.w),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20.r),
                  border: Border.all(color: const Color(0xFFB6B8D0)),
                ),
                child: Column(
                  children: [
                    SizedBox(height: 35.h),
                    if (isDataView) ...[
                      const CircularGauge(value: "55.00", unit: "kWh/Sqft", progress: 0.7),
                      SizedBox(height: 30.h),
                      const DateFilter(),
                      SizedBox(height: 15.h),
                      // এখানে ২টা বক্স কল করা হয়েছে
                      const EnergyDetailBox(title: "Energy Chart", mainValue: "20.05 kw"),
                      SizedBox(height: 15.h),

                      const EnergyDetailBox(title: "Energy Chart", mainValue: "5.53 kw"),
                    ] else ...[
                      const CircularGauge(value: "8897455", unit: "tk", progress: 0.8),
                      SizedBox(height: 30.h),
                      const RevenueDetailBox(),
                    ],
                  ],
                ),
              ),
              Positioned(
                top: 0,
                child: SizedBox(
                  width: 280.w,
                  child: ViewToggle(
                    isDataView: isDataView,
                    onToggle: (val) => setState(() => isDataView = val),
                  ),
                ),
              ),
            ],
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
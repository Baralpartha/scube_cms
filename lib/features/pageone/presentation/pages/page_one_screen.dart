import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../app.dart';
import '../../../../core/routes/app_routes.dart';

import '../widgets/lt_summary_list.dart';
import '../widgets/navigate_button.dart';
import '../widgets/metrics_grid.dart';
import '../widgets/temp_weather_row.dart';
import '../widgets/data_table_card.dart';
import '../widgets/info_cards.dart';

class PageOneScreen extends StatelessWidget {
  const PageOneScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFD9E4F1),
      appBar: _appBar(context),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 12.h),
            child: Column(
              children: [
                NavigateButton(
                  title: '2nd Page Navigate',
                  onTap: () {
                    designSizeNotifier.value = const Size(360, 836);
                    Navigator.pushNamed(context, AppRoutes.dashboard);
                  },
                ),
                SizedBox(height: 12.h),
                const MetricsGrid(),
                const TempWeatherCarouselSingle(),
                SizedBox(height: 12.h),
                const DataTableCard(),
                SizedBox(height: 12.h),
                const InfoCards(),
                SizedBox(height: 12.h),
                const LtSummaryList(),
                SizedBox(height: 16.h),
              ],
            ),
          ),
        ),
      ),
    );
  }

  AppBar _appBar(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.white,
      centerTitle: true,
      leading: IconButton(
        icon: Icon(Icons.arrow_back_rounded, color: Colors.black, size: 22.sp),
        onPressed: () {
          designSizeNotifier.value = const Size(360, 836);
          Navigator.pop(context);
        },
      ),
      title: Text('1st Page', style: TextStyle(color: Colors.black, fontSize: 12.sp, fontWeight: FontWeight.w600)),
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
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:scube_cms/features/dashboard/screens/widgets/data_view_card.dart';
import 'package:scube_cms/features/dashboard/screens/widgets/grid_action_button.dart';
import 'package:scube_cms/features/dashboard/screens/widgets/power_gauge.dart';
import 'package:scube_cms/features/dashboard/screens/widgets/source_load_switch.dart';
import 'package:scube_cms/features/dashboard/screens/widgets/top_tab_bar.dart';

import '../../../app.dart';
import '../../../core/constants/dashbord_color.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFD9E4F1),
      appBar: _buildAppBar(context),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.0.w, vertical: 12.0.h),
          child: Column(
            children: [
              // Top Section: Tabs, Electricity, Power Gauge
              Container(
                height: 537.h,
                width: 312.w,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12.r),
                  border: Border.all(color: Color(0xFFB6B8D0)),
                ),
                child: Column(
                  children: [
                    _buildTopSection(),
                    // Main Content Below Power Gauge
                    SizedBox(height: 7.h),
                    // Source/Load Switch (Imported Widget)
                    const SourceLoadSwitch(),
                    //SizedBox(height: 4.h),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 12.0.w),
                      child: Divider(
                        color: Color(0xFFA5A7B9),
                        thickness: 2,
                      ),
                    ),
                    // Data View Cards (Imported Widgets)
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.only(bottom: 12.0.sp, left: 12.0.sp, right: 12.0.sp),
                        child: _buildDataViewCards(),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20.h),
              // Bottom Grid Buttons (Imported Widget)
              _buildBottomGridButtons(),
              SizedBox(height: 12.h), // Extra space at the bottom
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


  Widget _buildTopSection() {
    return Container(
      padding: const EdgeInsets.only(bottom: 20),
      child: Column(
        children: [
          // Tab Bar (Imported Widget)
          const TopTabBar(),
          const Divider(height: 1, thickness: 1, color: Color(0xFFE0E0E0)),
          SizedBox(height: 12.h),
          // Electricity Title
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0.w),
            child: Align(
              alignment: Alignment.center,
              child: Text(
                'Electricity',
                style: TextStyle(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w600,
                  height: 1.0.h,
                  color: Color(0xFF979797),
                ),
              ),
            ),
          ),
          SizedBox(height: 2.h),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.0.w),
            child: Divider(
              color: Color(0xFF979797),
              thickness: 1,
            ),
          ),
          SizedBox(height: 14.h),
          // Total Power Gauge (Imported Widget)
          const PowerGauge(),
        ],
      ),
    );
  }


  Widget _buildDataViewCards() {
    return ListView(

      padding: EdgeInsets.zero,
      children: [
        DataViewCard(
          title: 'Data View',
          data1: '55505.63',
          data2: '58805.63',
          icon: "assets/images/solar-cell_5575136 1.png",
          color: Colors.blue,
          color2: Color(0xFF78C6FF),
          isActive: true,
        ),
        SizedBox(height: 4.h),
        DataViewCard(
          title: 'Data Type 2',
          data1: '55505.63',
          data2: '58805.63',
          icon: "assets/images/Asset 2@4x-8 3.png",
          color: Colors.deepOrange,
          color2: Color(0xFFFB902E),
          isActive: true,
        ),
        SizedBox(height: 4.h),
        DataViewCard(
          title: 'Data Type 3',
          data1: '55505.63',
          data2: '58805.63',
          icon: "assets/images/power_15679163 1.png",
          color: Colors.red,
          color2: Color(0xFF78C6FF),
          isActive: false,
        ),
        SizedBox(height: 4.h),
        DataViewCard(
          title: 'Data Type 4',
          data1: '60000.00',
          data2: '65000.00',
          icon: "assets/images/solar-cell_5575136 1.png",
          color: Colors.green,
          color2: Color(0xFF78C6FF),
          isActive: true,
        ),
      ],
    );
  }


  Widget _buildBottomGridButtons() {
    final List<Map<String, dynamic>> buttons = [
      {'title': 'Analysis Pro', 'icon': 'assets/images/chart_490605.png'},
      {'title': 'G. Generator', 'icon': 'assets/images/generator_8789846.png'},
      {'title': 'Plant Summery', 'icon': 'assets/images/charge_7345374 1.png'},
      {'title': 'Natural Gas', 'icon': 'assets/images/fire_3900509 1.png'},
      {'title': 'D. Generator', 'icon': 'assets/images/generator_8789846.png'},
      {'title': 'Water Process', 'icon': 'assets/images/faucet_1078798.png'},
    ];

    return GridView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 148 / 42,
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
      ),
      itemCount: buttons.length,
      itemBuilder: (context, index) {
        final item = buttons[index];
        return GridActionButton(title: item['title'] as String, icon: item['icon']);
      },
    );
  }
}
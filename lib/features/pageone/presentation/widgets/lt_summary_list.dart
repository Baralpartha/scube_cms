import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LtSummaryList extends StatelessWidget {
  const LtSummaryList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 336.w,
      child: Column(
        children: const [
          _LtSummaryCard(
            title: 'LT_01',
            rightValue: '495.505 kWp / 440 kW',
            lifetimeEnergy: '352.96 MWh',
            todayEnergy: '273.69 kWh',
            prevMeterEnergy: '0.00 MWh',
            livePower: '352.96 MWh',
          ),
          SizedBox(height: 12),
          _LtSummaryCard(
            title: 'LT_01',
            rightValue: '495.505 kWp / 440 kW',
            lifetimeEnergy: '352.96 MWh',
            todayEnergy: '273.69 kWh',
            prevMeterEnergy: '0.00 MWh',
            livePower: '352.96 MWh',
          ),
        ],
      ),
    );
  }
}

class _LtSummaryCard extends StatelessWidget {
  final String title;
  final String rightValue;
  final String lifetimeEnergy;
  final String todayEnergy;
  final String prevMeterEnergy;
  final String livePower;

  const _LtSummaryCard({
    required this.title,
    required this.rightValue,
    required this.lifetimeEnergy,
    required this.todayEnergy,
    required this.prevMeterEnergy,
    required this.livePower,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 336.w,
      padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10.r),
        border: Border.all(color: const Color(0xFFE2E8F0)),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.02),
            blurRadius: 4,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        children: [
          // Header row
          Row(
            children: [
              Text(
                title,
                style: TextStyle(
                  fontSize: 12.sp,
                  fontWeight: FontWeight.bold,
                  color: const Color(0xFF0F172A),
                ),
              ),
              const Spacer(),
              Row(
                children: [
                  Container(
                    width: 20.w,
                    height: 20.w,
                    decoration: BoxDecoration(
                      color: const Color(0xFFEFF6FF),
                      borderRadius: BorderRadius.circular(6.r),
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(4.w),
                      child: Image.asset('assets/images/img_17.png', fit: BoxFit.contain),
                    ),
                  ),
                  SizedBox(width: 6.w),
                  Text(
                    rightValue,
                    style: TextStyle(
                      fontSize: 10.sp,
                      fontWeight: FontWeight.bold,
                      color: const Color(0xFF3B82F6),
                    ),
                  ),
                ],
              ),
            ],
          ),

          SizedBox(height: 8.h),
          const Divider(height: 1, thickness: 0.8, color: Color(0xFFF1F5F9)),
          SizedBox(height: 10.h),

          Row(
            children: [
              Expanded(
                child: _MiniStat(
                  iconBg: const Color(0xFFECFEFF),
                  imageAsset: 'assets/images/img_13.png',
                  label: 'Lifetime Energy',
                  value: lifetimeEnergy,
                ),
              ),
              SizedBox(width: 8.w),
              Expanded(
                child: _MiniStat(
                  iconBg: const Color(0xFFFFFBEB),
                  imageAsset: 'assets/images/img_14.png',
                  label: 'Today Energy',
                  value: todayEnergy,
                ),
              ),
            ],
          ),
          SizedBox(height: 12.h),
          Row(
            children: [
              Expanded(
                child: _MiniStat(
                  iconBg: const Color(0xFFFFF7ED),
                  imageAsset: 'assets/images/img_15.png',
                  label: 'Prev. Meter Energy',
                  value: prevMeterEnergy,
                ),
              ),
              SizedBox(width: 8.w),
              Expanded(
                child: _MiniStat(
                  iconBg: const Color(0xFFF5F3FF),
                  imageAsset: 'assets/images/img_16.png',
                  label: 'Live Power',
                  value: livePower,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _MiniStat extends StatelessWidget {
  final Color iconBg;
  final String imageAsset;
  final String label;
  final String value;

  const _MiniStat({
    required this.iconBg,
    required this.imageAsset,
    required this.label,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: 28.w,
          height: 28.w,
          decoration: BoxDecoration(
            color: iconBg,
            borderRadius: BorderRadius.circular(6.r),
          ),
          child: Padding(
            padding: EdgeInsets.all(6.w),
            child: Image.asset(imageAsset, fit: BoxFit.contain),
          ),
        ),
        SizedBox(width: 8.w),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                label,
                style: TextStyle(
                  fontSize: 8.sp,
                  fontWeight: FontWeight.w400,
                  color: const Color(0xFF64748B),
                ),
              ),
              SizedBox(height: 1.h),
              Text(
                value,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  fontSize: 10.sp,
                  fontWeight: FontWeight.bold,
                  color: const Color(0xFF1E293B),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
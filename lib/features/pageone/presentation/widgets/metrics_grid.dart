import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../domain/models/metric_item.dart';
import 'metric_card.dart';

class MetricsGrid extends StatelessWidget {
  const MetricsGrid({super.key});

  @override
  Widget build(BuildContext context) {
    final items = <MetricItem>[
      MetricItem(
        iconPath: 'assets/images/img.png',
        iconBg: const Color(0xFFE9F9EF),
        iconColor: const Color(0xFF16A34A),
        value: '10000 kW',
        label: 'Live AC Power',
      ),
      MetricItem(
        iconPath: 'assets/images/img_1.png',
        iconBg: const Color(0xFFE6F7FF),
        iconColor: const Color(0xFF06B6D4),
        value: '82.58 %',
        label: 'Plant Generation',
      ),
      MetricItem(
        iconPath: 'assets/images/img_2.png',
        iconBg: const Color(0xFFF3E8FF),
        iconColor: const Color(0xFF7C3AED),
        value: '85.61 %',
        label: 'Live PR',
      ),
      MetricItem(
        iconPath: 'assets/images/img_3.png',
        iconBg: const Color(0xFFEFF6FF),
        iconColor: const Color(0xFF2563EB),
        value: '27.58 %',
        label: 'Cumulative PR',
      ),
      MetricItem(
        iconPath: 'assets/images/img_4.png',
        iconBg: const Color(0xFFFFF3E6),
        iconColor: const Color(0xFFF97316),
        value: '10000 ৳',
        label: 'Return PV Invt Today',
      ),
      MetricItem(
        iconPath: 'assets/images/img_5.png',
        iconBg: const Color(0xFFFFE4F1),
        iconColor: const Color(0xFFEC4899),
        value: '10000 kWh',
        label: 'Total Energy',
      ),
    ];

    return SizedBox(
      width: 336.w,
      child: GridView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: items.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          mainAxisSpacing: 10.h,
          crossAxisSpacing: 8.w,
          childAspectRatio: 107 / 37,
        ),
        itemBuilder: (_, i) => MetricCard(item: items[i]),
      ),
    );
  }
}

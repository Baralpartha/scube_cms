import 'package:flutter/material.dart';

import '../../../../core/constants/details_color.dart'; // Ensure correct path

class DataDetailItem extends StatelessWidget {
  final String label;
  final String dataValue;
  final String percentage;
  final String cost;
  final Color dotColor;

  const DataDetailItem({
    super.key,
    required this.label,
    required this.dataValue,
    required this.percentage,
    required this.cost,
    required this.dotColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12.0),
      decoration: BoxDecoration(
        border: Border.all(color: kEnergyChartBorderColor, width: 1), // 1px border
        borderRadius: BorderRadius.circular(10), // 10px border radius
      ),
      // এই Outer Row টি বাম দিকে Label/Dot এবং ডান দিকে Data/Cost কলামটিকে সাজাবে
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center, // Vertically center alignment
        children: [
          // 1. LEFT SIDE: Dot and Label (Data A, Data B, etc.)
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Dot and Label Row
              Row(
                children: [
                  Icon(Icons.circle, size: 8, color: dotColor),
                  const SizedBox(width: 8),
                  Text(
                    label,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
              // বাম দিকে "Data" বা "Cost" লেখা নেই, তাই এখানে অতিরিক্ত স্পেস দিতে পারেন যদি চান।
              // const SizedBox(height: 8),
            ],
          ),

          // 2. RIGHT SIDE: Data and Cost stacked vertically (as seen in the image)
          Column(
            crossAxisAlignment: CrossAxisAlignment.start, // Data and Cost text left-aligned
            children: [
              // Data Line
              Text.rich(
                TextSpan(
                  text: 'Data  : ',
                  style: TextStyle(color: kInactiveGrey, fontSize: 14),
                  children: <TextSpan>[
                    TextSpan(
                      text: '$dataValue ($percentage)',
                      style: const TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 4), // Data এবং Cost এর মধ্যে সামান্য দূরত্ব
              // Cost Line
              Text.rich(
                TextSpan(
                  text: 'Cost  : ',
                  style: TextStyle(color: kInactiveGrey, fontSize: 14),
                  children: <TextSpan>[
                    TextSpan(
                      text: cost,
                      style: const TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
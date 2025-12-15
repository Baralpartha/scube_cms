import 'package:flutter/material.dart';
import '../../../../core/constants/details_color.dart';
import 'data_detail_item.dart'; // Ensure correct path

class EnergyChartContainer extends StatelessWidget {
  const EnergyChartContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: kEnergyChartBorderColor, width: 1),
        borderRadius: BorderRadius.circular(10), // Main container border radius 10px
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Header Row (Title and KW Value)
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Energy Chart',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                  ),
                ),
                Text(
                  '5.53 kw',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 14),
            // Data List Items (Imported Widgets)
            DataDetailItem(
                label: 'Data A',
                dataValue: '2798.50',
                percentage: '29.53%',
                cost: '35689 ৳',
                dotColor: kDataADotColor),
            const SizedBox(height: 6),
            DataDetailItem(
                label: 'Data B',
                dataValue: '72598.50',
                percentage: '35.39%',
                cost: '5259689 ৳',
                dotColor: kDataBDotColor),
            const SizedBox(height: 6),
            DataDetailItem(
                label: 'Data C',
                dataValue: '6598.36',
                percentage: '83.90%',
                cost: '5698756 ৳',
                dotColor: kDataCDotColor),
            const SizedBox(height: 6),
            DataDetailItem(
                label: 'Data D',
                dataValue: '6598.26',
                percentage: '36.59%',
                cost: '356987 ৳',
                dotColor: kDataDDotColor),
          ],
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';
import '../../../../core/constants/dashbord_color.dart';

class PowerGaugeWidget extends StatelessWidget {
  const PowerGaugeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        // Circular Progress Indicator (Gauge)
        SizedBox(
          width: 200,
          height: 200,
          child: CircularProgressIndicator(
            value: 0.7, // Example fill value
            strokeWidth: 25,
            backgroundColor: kPrimaryBlue.withOpacity(0.1),
            valueColor: AlwaysStoppedAnimation<Color>(kPrimaryBlue),
          ),
        ),
        // Central Text
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              '55.00',
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
            ),
            Text(
              'kWh/Sqft',
              style: TextStyle(
                fontSize: 14,
                color: kInactiveGrey,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
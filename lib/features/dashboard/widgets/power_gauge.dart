import 'package:flutter/material.dart';

import '../../../core/constants/dashbord_color.dart';

class PowerGauge extends StatelessWidget {
  const PowerGauge({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        SizedBox(
          width: 150,
          height: 150,
          child: CircularProgressIndicator(
            value: 0.8, // Static 80% filled
            strokeWidth: 20,
            backgroundColor: kPrimaryBlue.withOpacity(0.2),
            valueColor: AlwaysStoppedAnimation<Color>(kPrimaryBlue),
          ),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text(
              'Total Power',
              style: TextStyle(
                fontSize: 14,
                color: Colors.black54,
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
      ],
    );
  }
}
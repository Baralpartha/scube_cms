import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constants/dashbord_color.dart';


class PowerGauge extends StatelessWidget {
  const PowerGauge({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        SizedBox(
          width: 130,
          height: 130,
          child: CircularProgressIndicator(
            value: 1.2, // Static 80% filled
            strokeWidth: 20,
            backgroundColor: kPrimaryBlue.withOpacity(0.2),
            valueColor: AlwaysStoppedAnimation<Color>(Color(0xFF398FC9)),
          ),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Total Power',
              style: TextStyle(
                fontSize: 12.sp,
                color: Color(0xFF04063E),
                fontWeight: FontWeight.w400,
                height: 1.0.h
              ),
            ),
            SizedBox(height: 4.h),
            Text(
              '5.53 kw',
              style: TextStyle(
                fontSize: 16.sp,
                fontWeight: FontWeight.w600,
                color: Color(0xFF04063E),
                height: 1.0.h
              ),
            ),
          ],
        ),
      ],
    );
  }
}
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TempWeatherSingleCard extends StatelessWidget {
  final String temp;
  final String wind;
  final String irradiation;
  final String meterAsset;
  final String weatherAsset;

  const TempWeatherSingleCard({
    super.key,
    required this.temp,
    required this.wind,
    required this.irradiation,
    required this.meterAsset,
    required this.weatherAsset,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 336.w,
      height: 80.h,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(12.r),
        child: Stack(
          children: [
            Positioned.fill(
              child: Row(
                children: [
                  Expanded(flex: 11, child: Container(color: Colors.white)),
                  Expanded(flex: 25, child: Container(color: const Color(0xFF9B8AF7))),
                ],
              ),
            ),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: 12.w),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // LEFT text
                  SizedBox(
                    width: 90.w,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          temp,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontSize: 24.sp,
                            fontWeight: FontWeight.w800,
                            color: const Color(0xFF1D9BF0),
                            height: 1,
                          ),
                        ),
                        SizedBox(height: 6.h),
                        Text(
                          'Module\nTemperature',
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontSize: 9.sp,
                            fontWeight: FontWeight.w500,
                            color: const Color(0xFF4B5563),
                            height: 1.0,
                          ),
                        ),
                      ],
                    ),
                  ),

                  SizedBox(width: 10.w),
                  SizedBox(
                    width: 33.w,
                    height: 72.h,
                    child: Image.asset(meterAsset, fit: BoxFit.contain),
                  ),

                  SizedBox(width: 10.w),

                  Expanded(
                    child: Row(
                      children: [
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                wind,
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  fontSize: 16.sp, // ✅
                                  fontWeight: FontWeight.w800,
                                  color: Colors.white,
                                  height: 1,
                                ),
                              ),
                              SizedBox(height: 3.h),
                              Text(
                                'Wind Speed & Direction',
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  fontSize: 10.sp, // ✅
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white.withOpacity(.95),
                                  height: 1,
                                ),
                              ),
                              SizedBox(height: 7.h),
                              Text(
                                irradiation,
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  fontSize: 15.sp,
                                  fontWeight: FontWeight.w800,
                                  color: Colors.white,
                                  height: 1,
                                ),
                              ),
                              SizedBox(height: 3.h),
                              Text(
                                'Effective Irradiation',
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  fontSize: 10.sp,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white.withOpacity(.95),
                                  height: 1,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(width: 6.w),
                        SizedBox(
                          width: 57.w,
                          height: 48.h,
                          child: Image.asset(weatherAsset, fit: BoxFit.contain),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

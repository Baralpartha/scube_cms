import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:scube_cms/features/pageone/presentation/widgets/temp_weather_single_card.dar.dart';

class TempWeatherCarouselSingle extends StatefulWidget {
  const TempWeatherCarouselSingle({super.key});

  @override
  State<TempWeatherCarouselSingle> createState() => _TempWeatherCarouselSingleState();
}

class _TempWeatherCarouselSingleState extends State<TempWeatherCarouselSingle> {
  Timer? _timer;
  int _index = 0;

  final _cards = const [
    _WeatherCardData(
      temp: '17°c',
      wind: '26 MPH / NW',
      irradiation: '15.20 w/m²',
      meterAsset: 'assets/images/img_9.png',
      weatherAsset: 'assets/images/img_10.png',
    ),
    _WeatherCardData(
      temp: '30°c',
      wind: '26 MPH / NW',
      irradiation: '15.20 w/m²',
      meterAsset: 'assets/images/img_11.png',
      weatherAsset: 'assets/images/img_7.png',
    ),
    _WeatherCardData(
      temp: '19°c',
      wind: '26 MPH / NW',
      irradiation: '15.20 w/m²',
      meterAsset: 'assets/images/img_12.png',
      weatherAsset: 'assets/images/img_8.png',
    ),
  ];

  @override
  void initState() {
    super.initState();
    _timer = Timer.periodic(const Duration(seconds: 3), (_) {
      if (!mounted) return;
      setState(() => _index = (_index + 1) % _cards.length);
    });
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 336.w,
      height:80.h,
      child: AnimatedSwitcher(
        duration: const Duration(milliseconds: 400),
        transitionBuilder: (Widget child, Animation<double> animation) {
          return FadeTransition(opacity: animation, child: child);
        },
        child: TempWeatherSingleCard(
          key: ValueKey(_index),
          temp: _cards[_index].temp,
          wind: _cards[_index].wind,
          irradiation: _cards[_index].irradiation,
          meterAsset: _cards[_index].meterAsset,
          weatherAsset: _cards[_index].weatherAsset,
        ),
      ),
    );
  }
}

class _WeatherCardData {
  final String temp;
  final String wind;
  final String irradiation;
  final String meterAsset;
  final String weatherAsset;

  const _WeatherCardData({
    required this.temp,
    required this.wind,
    required this.irradiation,
    required this.meterAsset,
    required this.weatherAsset,
  });
}
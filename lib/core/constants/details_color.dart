import 'package:flutter/material.dart';

// Extension to convert hex color string to Flutter Color object
extension HexColor on Color {
  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}

// --- App Color Constants ---
final Color kPrimaryBlue = Colors.blue;
final Color kInactiveGrey = Colors.black54;
final Color kEnergyChartBorderColor = Colors.grey.shade300;

// --- Specific Dot Colors ---
final Color kDataADotColor = kPrimaryBlue;
final Color kDataBDotColor = HexColor.fromHex('#4CAF50'); // Green/Blue
final Color kDataCDotColor = HexColor.fromHex('#9C27B0'); // Purple
final Color kDataDDotColor = HexColor.fromHex('#FF9800'); // Orange
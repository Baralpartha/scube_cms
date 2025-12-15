import 'package:flutter/material.dart';

// Extension to convert hex color string to Flutter Color object
extension HexColor on Color {
  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    // Ensure the string has 8 characters (RRGGBB) by prepending 'ff' (for opacity)
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}

// Custom Color Constants for the app
final Color kPrimaryBlue = Colors.blue;
final Color kInactiveGrey = Colors.black54;
final Color kCardBackground = HexColor.fromHex('#E5F4FE');
final Color kInactiveTabBackground = const Color(0xFFE0E0E0);
final Color kGridButtonBackground = Colors.white; // #FFFFFF


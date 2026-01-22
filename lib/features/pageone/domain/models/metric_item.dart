import 'package:flutter/material.dart';

class MetricItem {
  final String iconPath;
  final Color iconBg;
  final Color iconColor;
  final String value;
  final String label;

  MetricItem({
    required this.iconPath,
    required this.iconBg,
    required this.iconColor,
    required this.value,
    required this.label,
  });
}

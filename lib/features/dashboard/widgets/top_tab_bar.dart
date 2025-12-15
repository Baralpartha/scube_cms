import 'package:flutter/material.dart';
import '../../../core/constants/dashbord_color.dart';

class TopTabBar extends StatelessWidget {
  const TopTabBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      margin: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      decoration: BoxDecoration(
        color: kInactiveTabBackground,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _buildTab('Summary', true),
          _buildTab('SLD', false),
          _buildTab('Data', false),
        ],
      ),
    );
  }

  Widget _buildTab(String title, bool isActive) {
    return Expanded(
      child: Container(
        alignment: Alignment.center,
        decoration: isActive
            ? BoxDecoration(
          color: kPrimaryBlue, // Active tab color
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: kPrimaryBlue.withOpacity(0.3),
              spreadRadius: 1,
              blurRadius: 5,
              offset: const Offset(0, 3),
            ),
          ],
        )
            : null,
        child: Text(
          title,
          style: TextStyle(
            color: isActive ? Colors.white : kInactiveGrey,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
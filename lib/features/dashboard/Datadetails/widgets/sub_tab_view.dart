import 'package:flutter/material.dart';
import '../../../../core/constants/dashbord_color.dart';

class SubTabView extends StatelessWidget {
  const SubTabView({super.key});

  Widget _buildTabItem(String title, Color color, bool isActive) {
    return Row(
      children: [
        Icon(Icons.circle, size: 8, color: color),
        const SizedBox(width: 8),
        Text(
          title,
          style: TextStyle(
            color: color,
            fontWeight: isActive ? FontWeight.bold : FontWeight.normal,
            fontSize: 16,
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Row(
        // ট্যাগ দুটিকে মাঝখানে আনার জন্য
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Today Data (Active)
          _buildTabItem('Today Data', kPrimaryBlue, true),

          const SizedBox(width: 32),

          // Custom Date Data (Inactive)
          _buildTabItem('Custom Date Data', kInactiveGrey, false),

          // Orange Dot কে সরিয়ে দেওয়া হয়েছে যাতে center alignment কাজ করে।
          // যদি ডিজাইনে Orange Dot অপরিহার্য হয়, তবে এটি যোগ করার জন্য
          // একটি ভিন্ন layout কৌশল (যেমন Stack বা Center/Spacer এর কম্বিনেশন) দরকার।
        ],
      ),
    );
  }
}
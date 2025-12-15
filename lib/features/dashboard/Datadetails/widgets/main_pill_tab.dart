import 'package:flutter/material.dart';
import '../../../../core/constants/dashbord_color.dart';

class MainPillTab extends StatelessWidget {
  final String title;
  final bool isActive;
  final Color color;

  const MainPillTab({
    super.key,
    required this.title,
    required this.isActive,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        alignment: Alignment.center,
        margin: const EdgeInsets.all(4.0),
        decoration: isActive
            ? BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(25),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.08),
              blurRadius: 4,
              offset: const Offset(0, 2),
            ),
          ],
        )
            : null,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.circle, size: 8, color: color),
            const SizedBox(width: 8),
            Text(
              title,
              style: TextStyle(
                color: isActive ? color : kInactiveGrey,
                fontWeight: isActive ? FontWeight.bold : FontWeight.normal,
                fontSize: 16,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MainTabView extends StatelessWidget {
  const MainTabView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      margin: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 10.0),
      decoration: BoxDecoration(
        color: kInactiveGrey.withOpacity(0.1),
        borderRadius: BorderRadius.circular(25),
      ),
      child: Row(
        children: [
          MainPillTab(title: 'Data View', isActive: true, color: kPrimaryBlue),
          MainPillTab(title: 'Revenue View', isActive: false, color: kInactiveGrey),
        ],
      ),
    );
  }
}
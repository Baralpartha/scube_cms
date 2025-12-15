import 'package:flutter/material.dart';
import '../../../core/constants/dashbord_color.dart';

class GridActionButton extends StatelessWidget {
  final String title;
  final IconData icon;

  const GridActionButton({
    super.key,
    required this.title,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      // GridView's childAspectRatio handles the 148x42 ratio
      height: 42,
      decoration: BoxDecoration(
        color: kGridButtonBackground, // #FFFFFF
        borderRadius: BorderRadius.circular(8.0), // 8px border radius
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            spreadRadius: 1,
            blurRadius: 3,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: InkWell(
        onTap: () {
          // Handle button tap
        },
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Icon(icon, color: kPrimaryBlue, size: 28),
              const SizedBox(width: 8),
              Expanded(
                child: Text(
                  title,
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: Colors.black87,
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
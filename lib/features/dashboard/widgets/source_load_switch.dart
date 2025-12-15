import 'package:flutter/material.dart';
import '../../../core/constants/dashbord_color.dart';

class SourceLoadSwitch extends StatelessWidget {
  const SourceLoadSwitch({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: kPrimaryBlue, width: 1),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min, // To wrap content
        children: [
          // Source (Active)
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 8),
            decoration: BoxDecoration(
              color: kPrimaryBlue,
              borderRadius: BorderRadius.circular(20),
            ),
            child: const Text(
              'Source',
              style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
          ),
          // Load (Inactive)
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 8),
            child: Text(
              'Load',
              style: TextStyle(color: kInactiveGrey),
            ),
          ),
        ],
      ),
    );
  }
}
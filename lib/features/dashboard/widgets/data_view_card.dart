import 'package:flutter/material.dart';

import '../../../core/constants/dashbord_color.dart';
import '../Datadetails/Data_Detail_Screen.dart' hide kInactiveGrey;


class DataViewCard extends StatelessWidget {
  final String title;
  final String data1;
  final String data2;
  final IconData icon;
  final Color color;
  final bool isActive;

  const DataViewCard({
    super.key,
    required this.title,
    required this.data1,
    required this.data2,
    required this.icon,
    required this.color,
    required this.isActive,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: kCardBackground,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      elevation: 2,
      child: ListTile(
        contentPadding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
        leading: Icon(icon, color: color, size: 30),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  title,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
                const SizedBox(width: 8),
                Text(
                  isActive ? '(Active)' : '(Inactive)',
                  style: TextStyle(
                    // FIX: Replaced kPrimaryBlue.shade600 with the static Colors.blue.shade600
                    // because kPrimaryBlue, as defined, is just a Color, not a MaterialColor Swatch.
                    color: isActive ? Colors.blue.shade600 : Colors.red.shade600,
                    fontSize: 12,
                    fontStyle: FontStyle.italic,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 4),
            Text(
              'Data 1 : $data1',
              style: const TextStyle(fontSize: 14, color: Colors.black87),
            ),
            Text(
              'Data 2 : $data2',
              style: const TextStyle(fontSize: 14, color: Colors.black87),
            ),
          ],
        ),
        trailing: Icon(Icons.keyboard_arrow_right, color: kInactiveGrey),
// Inside your main DataViewCard widget:
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const DataDetailScreen()),
          );
        },      ),
    );
  }
}
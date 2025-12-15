import 'package:flutter/material.dart';

import '../../../../core/constants/dashbord_color.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final bool showNotification;

  const CustomAppBar({
    super.key,
    required this.title,
    this.showNotification = true,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.white,
      leading: IconButton(
        icon: Icon(Icons.arrow_back, color: kInactiveGrey),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
      title: Text(
        title,
        style: const TextStyle(color: Colors.black),
      ),
      actions: [
        if (showNotification)
          IconButton(
            icon: const Icon(Icons.notifications_none, color: Colors.red),
            onPressed: () {},
          ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
import 'package:flutter/material.dart';

import '../../constants/colors.dart';



class MyText extends StatelessWidget {
  final String title;
  final IconData? icon;
  final VoidCallback onTab;
  const MyText({
    super.key,
    required this.title,
    this.icon,
    required this.onTab,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      hoverColor: Appcolor.bgColor,
      onTap: onTab,
      child: Row(
        children: [
          Text(
            title,
            style: const TextStyle(
                fontSize: 18, fontWeight: FontWeight.w500, color: Colors.black),
          ),
          Icon(
            icon,
            color: Colors.black,
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

class HiderText extends StatelessWidget {
  final String title;
  final String subtitle;
  const HiderText({
    super.key,
    required this.title,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topLeft,
      child: SizedBox(
        width: 800,
        child: ListTile(
          title: Text(
            title,
            style: const TextStyle(
                fontSize: 60, color: Colors.black, fontWeight: FontWeight.bold),
          ),
          subtitle: Text(
            subtitle,
            style: const TextStyle(fontSize: 25, color: Colors.black),
          ),
        ),
      ),
    );
  }
}

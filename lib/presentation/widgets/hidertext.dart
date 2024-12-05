import 'package:flutter/material.dart';

class HiderText extends StatelessWidget {
  final String title;
  final String subtitle;
  const HiderText({
    super.key, required this.title, required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Card(color:  Colors.black12,
      child: ListTile(
        title: Text(
          title,
          style:const TextStyle(fontSize: 50, color: Colors.white),
        ),
        subtitle: Text(
          subtitle,
          style:const TextStyle(fontSize: 20, color: Colors.white),
        ),
      ),
    );
  }
}
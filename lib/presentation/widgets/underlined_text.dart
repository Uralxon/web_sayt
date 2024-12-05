import 'package:flutter/material.dart';

class ColorChangingText extends StatefulWidget {
  final String title;
  final VoidCallback onTap;
  const ColorChangingText({super.key, required this.title, required this.onTap});

  @override
  State<ColorChangingText> createState() => _ColorChangingTextState();
}

class _ColorChangingTextState extends State<ColorChangingText> {
  bool isHovered = false;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onHover: (value) {
        setState(() {
          isHovered = value;
        });
      },
      onTap: widget.onTap,
      hoverColor: Colors.transparent,
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      child: Text(
        widget.title,
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
        style: TextStyle(
          decorationColor: Theme.of(context).primaryColor,
          fontSize: 13,
          fontWeight: FontWeight.w600,
          color: isHovered ? Theme.of(context).primaryColor : Colors.black,
        ),
      ),
    );
  }
}

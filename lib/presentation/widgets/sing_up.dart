import 'package:flutter/material.dart';
import '../../constants/colors.dart';

class SignUp extends StatelessWidget {
  final bool isSmall;
  const SignUp({super.key, this.isSmall = false});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Appcolor.iconColor,
        foregroundColor: Colors.white,
      ),
      onPressed: () {},
      child: Padding(
        padding: EdgeInsets.symmetric(
            vertical: isSmall ? 5 : 10, horizontal: isSmall ? 10 : 20),
        child: Text(
          'Sign up',
          style: TextStyle(
              fontSize: isSmall ? 14 : 20, fontWeight: FontWeight.w500),
        ),
      ),
    );
  }
}

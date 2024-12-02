import 'package:flutter/material.dart';
import '../../constants/colors.dart';

class SignUp extends StatelessWidget {
  const SignUp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
          backgroundColor: WidgetStatePropertyAll(Appcolor.iconColor)),
      onPressed: () {},
      child: const Text(
        'Sign up',
        style: TextStyle(
            fontSize: 20, fontWeight: FontWeight.w500, color: Colors.black),
      ),
    );
  }
}

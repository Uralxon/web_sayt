import 'package:flutter/material.dart';
import 'package:web_sayt/presentation/widgets/sing_up.dart';

class BecomeATodayPage extends StatelessWidget {
  const BecomeATodayPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(maxWidth: 700),
      height: 600,
      child: const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Become a Yielder today",
            style: TextStyle(
                fontSize: 50, color: Colors.white, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 20),
          Text(
            "tart earning straight away with returns paid to your e-wallet monthly. With our online portal you can calculate potential returns, track your money, manage your investments and start building a property investment portfolio.",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 18,
              color: Colors.white,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          SignUp(),
        ],
      ),
    );
  }
}

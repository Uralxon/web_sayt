import 'package:flutter/material.dart';
import 'package:web_sayt/presentation/widgets/sing_up.dart';

class BecomeATodayPage extends StatelessWidget {
  const BecomeATodayPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(height:700,
        // child: Stack(
        //   children: [
        //     Image.asset("assets/images/IMG_7444.jpg", fit: BoxFit.cover),
        //     const Center(
        //       child: Column(
        //         children: [
        //           Text(
        //             "Become a today",
        //             style: TextStyle(fontSize: 24, color: Colors.white),
        //           ),SizedBox(height: 20,),
        //           Text(
        //             "tart earning straight away with returns paid to your e-wallet monthly. With our online portal you can calculate potential returns, track your money, manage your investments and start building a property investment portfolio.",
        //             style: TextStyle(fontSize: 18, color: Colors.white),
        //           ),SizedBox(height: 20,),
        //           SignUp(),
        //         ],
        //       ),
        //     )
        //   ],
        // ),
      ),
    );
  }
}

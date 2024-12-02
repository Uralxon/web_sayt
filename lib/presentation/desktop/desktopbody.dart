import 'package:flutter/material.dart';
import 'package:web_sayt/presentation/pages/benifets.dart';

import '../../constants/colors.dart';
import '../pages/become_a_today.dart';
import '../pages/header_page.dart';
import '../pages/how_to_work.dart';
import '../pages/listview_page.dart';
import '../widgets/mytext.dart';

class DesktopBody extends StatefulWidget {
  const DesktopBody({super.key});

  @override
  State<DesktopBody> createState() => _DesktopBodyState();
}

class _DesktopBodyState extends State<DesktopBody> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(mainAxisAlignment: MainAxisAlignment.center,
              children: [
                appBar(),
              ],
            ),
            Stack(
              children: [
                Column(
                  children: [
                    Image.asset("assets/images/5.jpg"),
                  ],
                ),
                HeaderPage()
              ],
            ),
            const ListviewWidget(),
           const HowToWork(),
           const BenefitsPage(),
           const BecomeATodayPage()
          ],
        ),
      ),
    );
  }
}

Widget appBar() {
  return Container(
    height: 60,
    alignment: Alignment.center,
    child: Row(
      children: [
        const Text(
          "Halol Invest",
          style: TextStyle(fontSize: 25),
        ),
        const SizedBox(
          width: 100,
        ),
        SizedBox(
          width: 500,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              MyText(
                title: 'Properties',
                onTab: () {},
              ),
              MyText(
                title: 'How It Work',
                onTab: () {},
              ),
              MyText(
                title: 'About Us',
                onTab: () {},
              ),
              MyText(
                title: 'Knowledge Hub',
                onTab: () {},
              ),
            ],
          ),
        ),
        const SizedBox(
          width: 100,
        ),
        Row(
          children: [
            MyText(
              title: 'Login',
              onTab: () {},
            ),
            ElevatedButton(
              style: ButtonStyle(
                  backgroundColor:
                      WidgetStatePropertyAll(Appcolor.iconColor)),
              onPressed: () {},
              child: const Text(
                'Sign up',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: Colors.black),
              ),
            ),
          ],
        )
      ],
    ),
  );
}

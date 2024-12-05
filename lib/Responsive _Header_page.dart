import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:web_sayt/presentation/widgets/sing_up.dart';

import 'presentation/widgets/hidertext.dart';
import 'responsive/responsive_layout.dart';

class HeaderPage extends StatefulWidget {
  const HeaderPage({super.key});

  @override
  State<HeaderPage> createState() => _HeaderPageState();
}

final List<Widget> headertext = [
  const HiderText(
    title: 'Debt-free and interrest-free earnings',
    subtitle:
        'Our socially responsible investments are free of any debt or interst,offering ethical investors aviable alternative to traditonall investmant.',
  ),
  const HiderText(
    title: 'Debt-free and interrest-free earnings',
    subtitle:
        'Our socially responsible investments are free of any debt or interst,offering ethical investors aviable alternative to traditonall investmant.',
  ),
  const HiderText(
    title: 'Debt-free and interrest-free earnings',
    subtitle:
        'Our socially responsible investments are free of any debt or interst,offering ethical investors aviable alternative to traditonall investmant.',
  ),
];

class _HeaderPageState extends State<HeaderPage> {
  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    return SizedBox(
      height: 500,
      child: Stack(
        children: [
          ResponsiveWidget.isSmallScreen(context)
              ? Image.asset(
                  "assets/images/5.jpg",
                  height: 600,
                  fit: BoxFit.cover,
                )
              : Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      "assets/images/5.jpg",
                      height: 600,
                      width: height,
                      fit: BoxFit.cover,
                    ),
                  ],
                ),
          Container(
            height: 550,
            padding: EdgeInsets.symmetric(
                horizontal: ResponsiveWidget.isSmallScreen(context)
                    ? height * .032
                    : height * .12),
            color: Colors.black26,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 50,
                ),
                CarouselSlider(
                    items: headertext,
                    options: CarouselOptions(
                        height: 380,
                        autoPlayInterval: const Duration(seconds: 5),
                        autoPlay: true,
                        aspectRatio: 16 / 9,
                        enlargeCenterPage: true,
                        enlargeFactor: 0.5)),
                const SignUp(),
                const SizedBox(
                  height: 35,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

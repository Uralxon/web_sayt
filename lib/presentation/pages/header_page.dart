import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../widgets/hidertext.dart';
import '../widgets/sing_up.dart';

class HeaderPage extends StatelessWidget {
  HeaderPage({
    super.key,
  });

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

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 50),
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/5.jpg"),
          fit: BoxFit.fill,
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 50, bottom: 35),
            child: CarouselSlider(
              items: headertext,
              options: CarouselOptions(
                height: 300,
                autoPlayInterval: const Duration(seconds: 5),
                autoPlay: true,
                aspectRatio: 16 / 9,
                enlargeCenterPage: true,
                enlargeFactor: 0.5,
              ),
            ),
          ),
          Padding(
            padding:
                EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.11),
            child: const SignUp(),
          ),
        ],
      ),
    );
  }
}

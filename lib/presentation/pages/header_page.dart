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
      padding: const EdgeInsets.symmetric(horizontal: 36),
      color: Colors.black12,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 50,
          ),
          CarouselSlider(
              items: headertext,
              options: CarouselOptions(height: 400,
                  autoPlayInterval:const Duration(seconds: 5),
                  autoPlay: true,
                  aspectRatio: 16 / 9,
                  enlargeCenterPage: true,
                  enlargeFactor: 0.5)),
         
          const SignUp(),
          const SizedBox(height: 35,),
        ],
      ),
    );
  }
}

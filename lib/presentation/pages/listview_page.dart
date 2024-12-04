import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../constants/colors.dart';

class ListviewWidget extends StatelessWidget {
  const ListviewWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Container(
      color: Appcolor.bgColor,
      width: MediaQuery.of(context).size.width,
      child: width > 1200
          ? Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                4,
                (index) {
                  return const Padding(
                    padding: EdgeInsets.all(16.0),
                    child: MyCard(
                      title: 'Ethical Investing',
                      imageUrl: 'assets/icons/maximize.svg',
                      title2:
                          'Debit-free and interst-free earnings. Eran compettitve returns from our investment apportunities.No banks, mortgages or leverage in sight!',
                    ),
                  );
                },
              ),
            )
          : SizedBox(
              height: 300,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: List.generate(
                  4,
                  (index) {
                    return const Padding(
                      padding: EdgeInsets.all(16.0),
                      child: MyCard(
                        title: 'Ethical Investing',
                        imageUrl: 'assets/icons/maximize.svg',
                        title2:
                            'Debit-free and interst-free earnings. Eran compettitve returns from our investment apportunities.No banks, mortgages or leverage in sight!',
                      ),
                    );
                  },
                ),
              ),
            ),
    );
  }
}

class MyCard extends StatelessWidget {
  final String title;
  final String imageUrl;
  final String title2;
  final Widget? child;

  const MyCard({
    super.key,
    required this.title,
    required this.imageUrl,
    required this.title2,
    this.child,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 230,
      child: Card(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SvgPicture.asset(
                imageUrl,
                height: 40,
              ),
              const SizedBox(
                height: 6,
              ),
              Text(
                title,
                style:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
              ),
              const SizedBox(
                height: 6,
              ),
              Text(
                textAlign: TextAlign.center,
                title2,
                style: const TextStyle(fontSize: 14),
              ),
              if (child != null) child!,
            ],
          ),
        ),
      ),
    );
  }
}

class UnderlineText extends StatelessWidget {
  final String title;
  final Color color;
  final VoidCallback onTab;
  const UnderlineText({
    super.key,
    required this.title,
    required this.color,
    required this.onTab,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTab,
      child: Container(
        decoration: BoxDecoration(
          border: BorderDirectional(
            bottom: BorderSide(color: color),
          ),
        ),
        child: Text(
          title,
          style: TextStyle(color: color, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}

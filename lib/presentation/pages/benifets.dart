import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../constants/colors.dart';
import 'listview_page.dart';

class BenefitsPage extends StatelessWidget {
  const BenefitsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/images/IMG_7444.jpg",
              fit: BoxFit.cover,
              height: 800,
            ),
            Image.asset("assets/images/IMG_7444.jpg", fit: BoxFit.cover,height: 800,),
          ],
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              const Text(
                "Benefits",
                style: TextStyle(fontSize: 24, color: Colors.white),
              ),
              const Text(
                "Over 4000 users have chosen to become Yielders. Here are the benefits enjoyed by them.Managed for you, by exper",
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                padding: const EdgeInsets.all(20),
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(5))),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "Managed for you, by experts.",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        SvgPicture.asset("assets/icons/maximize.svg")
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    const Text(
                        "Our team is made up of property, financial, legal and technology experts with over 30 years’ combined investing experience. We use our exclusive network to get you the best - usually off-market - investment opportunities."),
                    const SizedBox(
                      height: 15,
                    ),
                    UnderlineText(
                        title: 'Learn more',
                        color: Appcolor.iconColor,
                        onTab: () {})
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                padding: const EdgeInsets.all(20),
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(5))),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "Managed for you, by experts.",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        SvgPicture.asset("assets/icons/maximize.svg")
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    const Text(
                        "Our team is made up of property, financial, legal and technology experts with over 30 years’ combined investing experience. We use our exclusive network to get you the best - usually off-market - investment opportunities."),
                    const SizedBox(
                      height: 15,
                    ),
                    UnderlineText(
                        title: 'Learn more',
                        color: Appcolor.iconColor,
                        onTab: () {})
                  ],
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                padding: const EdgeInsets.all(20),
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(15))),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ClipRRect(
                            child:
                                SvgPicture.asset("assets/icons/maximize.svg")),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text(
                          "Managed for you, by experts.",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    const Text(
                        "Our team is made up of property, financial, legal and technology experts with over 30 years’ combined investing experience. We use our exclusive network to get you the best - usually off-market - investment opportunities."),
                  ],
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                padding: const EdgeInsets.all(20),
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(15))),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SvgPicture.asset("assets/icons/maximize.svg"),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text(
                          "Managed for you, by experts.",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    const Text(
                        "Our team is made up of property, financial, legal and technology experts with over 30 years’ combined investing experience. We use our exclusive network to get you the best - usually off-market - investment opportunities."),
                  ],
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                padding: const EdgeInsets.all(20),
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(15))),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SvgPicture.asset("assets/icons/maximize.svg"),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text(
                          "Managed for you, by experts.",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    const Text(
                        "Our team is made up of property, financial, legal and technology experts with over 30 years’ combined investing experience. We use our exclusive network to get you the best - usually off-market - investment opportunities."),
                  ],
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                padding: const EdgeInsets.all(20),
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(15))),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SvgPicture.asset("assets/icons/maximize.svg"),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text(
                          "Managed for you, by experts.",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    const Text(
                        "Our team is made up of property, financial, legal and technology experts with over 30 years’ combined investing experience. We use our exclusive network to get you the best - usually off-market - investment opportunities."),
                  ],
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                padding: const EdgeInsets.all(20),
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(15))),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SvgPicture.asset("assets/icons/maximize.svg"),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text(
                          "Managed for you, by experts.",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    const Text(
                        "Our team is made up of property, financial, legal and technology experts with over 30 years’ combined investing experience. We use our exclusive network to get you the best - usually off-market - investment opportunities."),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:web_sayt/presentation/pages/listview_page.dart';


import '../../constants/colors.dart';

class HowToWork extends StatelessWidget {
  const HowToWork({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      color: Appcolor.bgColor,
      child: Column(
        children: [
          const Text(
            "How To Work",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
          ),
          Wrap(
            alignment: WrapAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: SizedBox(
                  width: 300,
                  child: Column(
                    children: [
                      SvgPicture.asset(
                        "assets/icons/maximize.svg",
                        height: 40,
                      ),
                      const SizedBox(
                        height: 6,
                      ),
                      const Text(
                        "Invest",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 17),
                      ),
                      const SizedBox(
                        height: 6,
                      ),
                      const Text(
                        textAlign: TextAlign.center,
                        "Buy shares in income producing property investments from £100. Choose how many shares you wish to own in any available investment!",
                        style: TextStyle(fontSize: 14),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: SizedBox(
                  width: 300,
                  child: Column(
                    children: [
                      SvgPicture.asset(
                        "assets/icons/maximize.svg",
                        height: 40,
                      ),
                      const SizedBox(
                        height: 6,
                      ),
                      const Text(
                        "Invest",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 17),
                      ),
                      const SizedBox(
                        height: 6,
                      ),
                      const Text(
                        textAlign: TextAlign.center,
                        "Buy shares in income producing property investments from £100. Choose how many shares you wish to own in any available investment!",
                        style: TextStyle(fontSize: 14),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: SizedBox(
                  width: 300,
                  child: Column(
                    children: [
                      SvgPicture.asset(
                        "assets/icons/maximize.svg",
                        height: 40,
                      ),
                      const SizedBox(
                        height: 6,
                      ),
                      const Text(
                        "Invest",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 17),
                      ),
                      const SizedBox(
                        height: 6,
                      ),
                      const Text(
                        textAlign: TextAlign.center,
                        "Buy shares in income producing property investments from £100. Choose how many shares you wish to own in any available investment!",
                        style: TextStyle(fontSize: 14),
                      ),
                      const SizedBox(height: 30),
                    ],
                  ),
                ),
              ),
            ],
          ),
          UnderlineText(
            title: "Learn more",
            color: Colors.black,
            onTab: () {},
          )
        ],
      ),
    );
  }
}

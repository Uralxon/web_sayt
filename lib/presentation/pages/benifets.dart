import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../constants/colors.dart';
import 'listview_page.dart';

class BenefitsPage extends StatelessWidget {
  const BenefitsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(
              "https://www.yielders.co.uk/bundles/app/img/y-benefits.jpg"),
          fit: BoxFit.cover,
        ),
      ),
      padding: const EdgeInsets.symmetric(vertical: 100.0, horizontal: 16),
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
          const SizedBox(height: 15),
          Container(
            constraints: const BoxConstraints(maxWidth: 1050),
            child: const Wrap(
              spacing: 40,
              runSpacing: 40,
              children: [
                BenefitsSquareContainer(),
                BenefitsSquareContainer(),
                BenefitsRoundedContainer(),
                BenefitsRoundedContainer(),
                BenefitsRoundedContainer(),
                BenefitsRoundedContainer(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class BenefitsRoundedContainer extends StatelessWidget {
  const BenefitsRoundedContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(maxWidth: 500),
      padding: const EdgeInsets.all(30),
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(15))),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(Icons.home, color: Appcolor.iconColor, size: 50),
          const SizedBox(width: 20),
          const Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Managed for you, by experts.",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 15),
                Text(
                    "Our team is made up of property, financial, legal and technology experts with over 30 years’ combined investing experience. We use our exclusive network to get you the best - usually off-market - investment opportunities."),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class BenefitsSquareContainer extends StatelessWidget {
  const BenefitsSquareContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(maxWidth: 500),
      padding: const EdgeInsets.all(30),
      margin: const EdgeInsets.symmetric(vertical: 20),
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(5))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
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
              title: 'Learn more', color: Appcolor.iconColor, onTab: () {})
        ],
      ),
    );
  }
}

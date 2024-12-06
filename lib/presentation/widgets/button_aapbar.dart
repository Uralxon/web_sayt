import 'package:flutter/material.dart';

import 'underlined_text.dart';

class MyBottomAppBar extends StatelessWidget {
  const MyBottomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: double.infinity,
      padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width * .2),
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
            "Halol Invest",
            style: TextStyle(fontSize: 25),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ColorChangingText(
                title: 'Properties',
                onTap: () {},
              ),
              ColorChangingText(
                title: 'About Us',
                onTap: () {},
              ),
              const SizedBox(height: 16),
              const Text(
                "Contact",
                style: TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.w600,
                ),
              ),
              ColorChangingText(
                title: 'T: +44 (0) 207 205 4650',
                onTap: () {},
              ),
              ColorChangingText(
                title: 'E: team@yielders.co.uk',
                onTap: () {},
              ),
              const SizedBox(height: 10),
              Row(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.telegram_outlined,
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.telegram_outlined,
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.telegram_outlined,
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.telegram_outlined,
                    ),
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
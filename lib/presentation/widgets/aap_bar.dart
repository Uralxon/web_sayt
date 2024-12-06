import 'package:flutter/material.dart';
import 'package:web_sayt/presentation/pages/about_us.dart';
import 'package:web_sayt/presentation/pages/contact_us.dart';

import 'sing_up.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MyAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      surfaceTintColor: Colors.white,
      backgroundColor: Colors.white,
      leadingWidth: MediaQuery.of(context).size.width * .2,
      centerTitle: true,
      leading: const Align(
        alignment: Alignment.centerRight,
        child: Text(
          "Halol Invest",
          style: TextStyle(fontSize: 25),
        ),
      ),
      title: MediaQuery.of(context).size.width > 1000
          ? Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(foregroundColor: Colors.black),
                  child: const Text(
                    'Properties',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                  ),
                ),
                const SizedBox(width: 40),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const AboutUsPage(),
                        ));
                  },
                  style: TextButton.styleFrom(foregroundColor: Colors.black),
                  child: const Text(
                    'About Us',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                  ),
                ),
                const SizedBox(width: 40),
                TextButton(
                  onPressed: () { Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const ContactUs(),
                        ));},
                  style: TextButton.styleFrom(foregroundColor: Colors.black),
                  child: const Text(
                    'Contact Us',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                  ),
                ),
              ],
            )
          : null,
      actions: [
        Stack(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const SignUp(isSmall: true),
                SizedBox(width: MediaQuery.of(context).size.width * .2),
              ],
            ),
            if (MediaQuery.of(context).size.width < 1000)
              Positioned(
                right: 0,
                child: IconButton(
                  onPressed: () {
                    Scaffold.of(context).openEndDrawer();
                  },
                  icon: const Icon(Icons.menu),
                ),
              ),
          ],
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size(0, 60);
}

import 'package:flutter/material.dart';
import 'package:web_sayt/presentation/pages/contact_us.dart';

import '../../constants/colors.dart';
import '../pages/about_us.dart';
import 'mytext.dart';
import 'underlined_text.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Appcolor.iconColor,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Text(
                    'X',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                  ),
                )
              ],
            ),
            ColorChangingText(
              title: 'Properties',
              onTap: () {},
            ),
            ColorChangingText(
              title: 'About Us',
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const AboutUsPage(),
                    ));
              },
            ),
            ColorChangingText(
              title: 'Contact Us',
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ContactUs(),
                    ));
              },
            ),
          ],
        ),
      ),
    );
  }
}

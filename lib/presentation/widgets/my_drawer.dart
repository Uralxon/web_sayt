import 'package:flutter/material.dart';

import '../../constants/colors.dart';
import 'mytext.dart';

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
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                  ),
                )
              ],
            ),
            MyText(
              title: 'Properties',
              onTab: () {},
            ),
            MyText(
              title: 'How It Work',
              onTab: () {},
            ),
            MyText(
              title: 'About Us',
              onTab: () {},
            ),
            MyText(
              title: 'Knowledge Hub',
              onTab: () {},
            ),
          ],
        ),
      ),
    );
  }
}

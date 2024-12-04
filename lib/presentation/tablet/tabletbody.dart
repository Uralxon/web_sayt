import 'package:flutter/material.dart';
import 'package:web_sayt/presentation/pages/benifets.dart';

import '../../constants/colors.dart';

import '../pages/header_page.dart';
import '../pages/how_to_work.dart';
import '../pages/listview_page.dart';
import '../widgets/mytext.dart';

class TabletBody extends StatefulWidget {
  const TabletBody({super.key});

  @override
  State<TabletBody> createState() => _TabletBodyState();
}

final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

class _TabletBodyState extends State<TabletBody> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawerEnableOpenDragGesture: false,
      key: _scaffoldKey,
      appBar: AppBar(
        title: const Text(
          "Halol Invest",
          style: TextStyle(fontSize: 25),
        ),
        actions: [
          Row(
            children: [
              MyText(
                title: 'Login',
                onTab: () {},
              ),
              ElevatedButton(
                style: ButtonStyle(
                    backgroundColor:
                        WidgetStatePropertyAll(Appcolor.iconColor)),
                onPressed: () {},
                child: const Text(
                  'Sign up',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: Colors.black),
                ),
              ),
            ],
          ),
          IconButton(
              onPressed: () {
                return _scaffoldKey.currentState?.openEndDrawer();
              },
              icon: const Icon(
                Icons.menu,
                size: 35,
              ))
        ],
      ),
      endDrawer: MyDrawer(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                SizedBox(
                    height: 580,
                    child: Image.asset(
                      "assets/images/5.jpg",
                      fit: BoxFit.cover,
                    )),
                HeaderPage(),
              ],
            ),
            const ListviewWidget(),
            const HowToWork(),
            const BenefitsPage(),
          ],
        ),
      ),
    );
  }
}

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

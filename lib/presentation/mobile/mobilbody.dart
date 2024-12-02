import 'package:flutter/material.dart';
import 'package:web_sayt/presentation/pages/become_a_today.dart';


import '../../constants/colors.dart';
import '../pages/benifets.dart';
import '../pages/header_page.dart';
import '../pages/how_to_work.dart';
import '../pages/listview_page.dart';
import '../widgets/mytext.dart';
import '../widgets/sing_up.dart';

class MobilBody extends StatefulWidget {
  const MobilBody({super.key});

  @override
  State<MobilBody> createState() => _MobilBodyState();
}

final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

class _MobilBodyState extends State<MobilBody> {
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
              const SignUp(),
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
      endDrawer: Drawer(
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
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Column(
                  children: [
                    SizedBox(
                        height: 520,
                        child: Image.asset(
                          "assets/images/5.jpg",
                          fit: BoxFit.cover,
                        )),
                  ],
                ),
                HeaderPage(),
              ],
            ),
            const ListviewWidget(),
           const HowToWork(),
           const BenefitsPage(),
           const BecomeATodayPage()
            
          ],
        ),
      ),
    );
  }
}


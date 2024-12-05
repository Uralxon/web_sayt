// import 'package:flutter/material.dart';

// import 'package:web_sayt/constants/colors.dart';
// import 'package:web_sayt/presentation/desktop/desktopbody.dart';
// import 'package:web_sayt/presentation/mobile/mobilbody.dart';
// import 'package:web_sayt/responsive/responsive_layout.dart';

// import 'presentation/tablet/tabletbody.dart';

// class HomePage extends StatefulWidget {
//   const HomePage({super.key});

//   @override
//   State<HomePage> createState() => _HomePageState();
// }

// class _HomePageState extends State<HomePage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         backgroundColor: Appcolor.bgColor,
//         body: const ResponsiveLayout(
//           mobileBody: MobilBody(),
//           desktopBody: DesktopBody(),
//           tabletBody: TabletBody(),
//         ));
//   }
// }
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:web_sayt/Responsive%20_Header_page.dart';
import 'package:web_sayt/presentation/desktop/desktopbody.dart';

import 'constants/colors.dart';
import 'presentation/widgets/mytext.dart';
import 'presentation/widgets/sing_up.dart';
import 'responsive/responsive_layout.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawerEnableOpenDragGesture: false,
      key: _scaffoldKey,
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
            ResponsiveWidget.isLargScreen(context)
                ? Row(mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    appBar(),
                  ],
                )
                :AppBar(
                    title: const Text(
                      "Tamal Invest",
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
            const HeaderPage(),
          ],
        ),
      ),
    );
  }
}

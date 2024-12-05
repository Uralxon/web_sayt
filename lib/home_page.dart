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
import 'package:web_sayt/presentation/desktop/desktopbody.dart';

import 'constants/colors.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Appcolor.bgColor,
      body: const DesktopBody(),
    );
  }
}

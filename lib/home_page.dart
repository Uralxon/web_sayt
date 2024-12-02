import 'package:flutter/material.dart';


import 'constants/colors.dart';
import 'presentation/desktop/desktopbody.dart';
import 'presentation/mobile/mobilbody.dart';
import 'presentation/tablet/tabletbody.dart';
import 'responsive/responsive_layout.dart';


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
        body: const ResponsiveLayout(
          mobileBody: MobilBody(),
          desktopBody: DesktopBody(),
          tabletBody: TabletBody(),
        ));
  }
}


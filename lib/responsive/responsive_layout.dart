import 'package:flutter/material.dart';

class ResponsiveWidget extends StatelessWidget {
  final Widget largeScreen;
  final Widget mediumScreen;
  final Widget smallScreen;
  const ResponsiveWidget(
      {super.key,
      required this.largeScreen,
      required this.mediumScreen,
      required this.smallScreen});
  static bool isLargScreen(BuildContext context) {
    return MediaQuery.of(context).size.width > 1200;
  }

  static bool isMediumScreen(BuildContext context) {
    return MediaQuery.of(context).size.width < 800 &&
        MediaQuery.of(context).size.width <= 1200;
  }

  static bool isSmallScreen(BuildContext context) {
    return MediaQuery.of(context).size.width < 800;
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        if (constraints.maxWidth > 1200) {
          return largeScreen;
        } else if (constraints.maxWidth >= 600 &&
            constraints.maxWidth <= 1200) {
          return mediumScreen ?? largeScreen;
        } else {
          return smallScreen ?? largeScreen;
        }
      },
    );
  }
}
// import 'package:flutter/material.dart';

// class ResponsiveLayout extends StatelessWidget {
//   final Widget mobileBody;
//   final Widget desktopBody;
//   final Widget tabletBody;
//   const ResponsiveLayout(
//       {super.key,
//       required this.mobileBody,
//       required this.desktopBody,
//       required this.tabletBody});

//   @override
//   Widget build(BuildContext context) {
//     return LayoutBuilder(
//       builder: (context, constraints) {
//         if (constraints.maxWidth < 600) {
//           return mobileBody;
//         } else if (constraints.maxWidth < 1040) {
//           return tabletBody;
//         } else {
//           return desktopBody;
//         }
//       },
//     );
//   }
// }

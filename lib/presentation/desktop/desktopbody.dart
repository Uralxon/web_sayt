import 'package:flutter/material.dart';
import 'package:web_sayt/presentation/pages/benifets.dart';
import 'package:web_sayt/presentation/tablet/tabletbody.dart';
import 'package:web_sayt/presentation/widgets/sing_up.dart';
import 'package:web_sayt/presentation/widgets/underlined_text.dart';

import '../pages/become_a_today.dart';
import '../pages/header_page.dart';
import '../pages/how_to_work.dart';
import '../pages/listview_page.dart';

class DesktopBody extends StatefulWidget {
  const DesktopBody({super.key});

  @override
  State<DesktopBody> createState() => _DesktopBodyState();
}

class _DesktopBodyState extends State<DesktopBody> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: const MyAppBar(),
      endDrawer: width < 1000 ? const MyDrawer() : null,
      body: Stack(
        children: [
          Positioned(
            bottom: 0,
            child: SizedBox(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: Image.network(
                "https://www.yielders.co.uk/bundles/app/img/signup.jpg",
                fit: BoxFit.cover,
              ),
            ),
          ),
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                HeaderPage(),
                const ListviewWidget(),
                const HowToWork(),
                const BenefitsPage(),
                const BecomeATodayPage(),
                const BottomAppBar()
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class BottomAppBar extends StatelessWidget {
  const BottomAppBar({
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
                  onPressed: () {},
                  style: TextButton.styleFrom(foregroundColor: Colors.black),
                  child: const Text(
                    'About Us',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                  ),
                ),
                const SizedBox(width: 40),
                TextButton(
                  onPressed: () {},
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

class MyAnimatedButton extends StatefulWidget {
  const MyAnimatedButton({super.key, required this.onTap});
  final VoidCallback onTap;

  @override
  State<MyAnimatedButton> createState() => _MyAnimatedButtonState();
}

class _MyAnimatedButtonState extends State<MyAnimatedButton>
    with TickerProviderStateMixin {
  late AnimationController _animationController;
  bool _isPlaying = false;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 500),
    );
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  void _toggleAnimation() {
    widget.onTap();
    if (_isPlaying) {
      _animationController.reverse();
    } else {
      _animationController.forward();
    }

    setState(() {
      _isPlaying = !_isPlaying;
    });
  }

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: AnimatedIcon(
        icon: AnimatedIcons.play_pause,
        progress: _animationController,
      ),
      onPressed: _toggleAnimation,
    );
  }
}

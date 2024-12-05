import 'package:flutter/material.dart';
import 'package:web_sayt/presentation/pages/benifets.dart';
import '../pages/become_a_today.dart';
import '../pages/header_page.dart';
import '../pages/how_to_work.dart';
import '../pages/listview_page.dart';
import '../widgets/aap_bar.dart';
import '../widgets/my_drawer.dart';

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

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:region_2025/ui/view/layout_view.dart';

// const String Logo = 'assets/Icons/Logo.svg';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<StatefulWidget> createState() => _SplashState();
}

class _SplashState extends State<Splash> with SingleTickerProviderStateMixin {
  double textOpacityLevel = 0.0;
  late final AnimationController _animationController = AnimationController(
    vsync: this,
    duration: const Duration(milliseconds: 2000),
  );
  late final Animation<double> _animation = CurvedAnimation(
    parent: _animationController,
    curve: Curves.easeIn,
  );

  @override
  void initState() {
    super.initState();
    _animationController.forward();
    Future.delayed(Duration(milliseconds: 3000), () {
      if (_animationController.isCompleted) _animationController.reverse();

      Navigator.push(context, MaterialPageRoute(builder: (context)=> LayoutView()));
    });
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }


  // navigator on
  @override
  Widget build(BuildContext context) {
    return Material(
      child: ColoredBox(
        color: Colors.black,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              child: Center(
                child: FadeTransition(
                  opacity: _animation,
                  child: Column(
                    spacing: 10,
                    children: [
                      SvgPicture.asset(
                        width: 90,
                        height: 90,
                        'assets/Icons/Logo.svg',
                        colorFilter: ColorFilter.mode(
                          Colors.brown,
                          BlendMode.srcIn,
                        ),
                      ),
                      Text(
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 45,
                          color: Colors.white,
                        ),
                        'Drive Mate',
                      ),
                      Text(
                        style: TextStyle(
                          letterSpacing: 2,
                          fontSize: 18,
                          color: Colors.white,
                        ),
                        '연결하고,운전하고,즐기세요',
                      ),
                      Image.asset("assets/images/car.png"),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

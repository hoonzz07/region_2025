
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HeaderTitle extends StatelessWidget {
  const HeaderTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      spacing: 20,
      children: [
        SvgPicture.asset(
          width: 60,
          height: 60,
          'assets/Icons/Logo.svg',
          colorFilter: ColorFilter.mode(Colors.brown, BlendMode.srcIn),
        ),
        Text(
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 45,
            color: Colors.white,
          ),
          'Drive Mate',
        ),
      ],
    );
  }
}

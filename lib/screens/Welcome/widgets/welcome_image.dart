import 'package:calculator/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class WelcomeImage extends StatelessWidget {
  const WelcomeImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Welcome to edu'.toUpperCase(),
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: defaultPadding * 2),
        Row(
          children: [
            const Spacer(),
            Expanded(
              flex: 8,
              child: SvgPicture.asset(
                'assets/icons/chat.svg',
              ),
            ),
            const Spacer(),
          ],
        ),
        const SizedBox(height: defaultPadding * 2),
      ],
    );
  }
}

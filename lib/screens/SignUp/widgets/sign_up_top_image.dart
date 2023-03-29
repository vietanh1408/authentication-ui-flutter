import 'package:calculator/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SignUpTopImage extends StatelessWidget {
  const SignUpTopImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Sign Up'.toUpperCase(),
          style: const TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(
          height: defaultPadding,
        ),
        Row(
          children: [
            const Spacer(),
            Expanded(
              flex: 6,
              child: SvgPicture.asset(
                'assets/icons/signup.svg',
              ),
            ),
            const Spacer(),
          ],
        ),
        const SizedBox(
          height: defaultPadding,
        ),
      ],
    );
  }
}

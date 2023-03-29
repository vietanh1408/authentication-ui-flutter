import 'package:calculator/screens/Welcome/widgets/welcome_image.dart';
import 'package:calculator/widgets/login_and_signup_button.dart';
import 'package:flutter/material.dart';

class MobileWelcomeScreen extends StatelessWidget {
  const MobileWelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        const WelcomeImage(),
        Row(
          children: const [
            Spacer(),
            Expanded(
              flex: 8,
              child: LoginAndSignupButton(),
            ),
            Spacer(),
          ],
        )
      ],
    );
  }
}

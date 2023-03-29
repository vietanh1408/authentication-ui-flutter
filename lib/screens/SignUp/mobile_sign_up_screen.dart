import 'package:calculator/screens/SignUp/widgets/sign_up_form.dart';
import 'package:calculator/screens/SignUp/widgets/sign_up_top_image.dart';
import 'package:flutter/material.dart';

class MobileSignUpScreen extends StatelessWidget {
  const MobileSignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        const SignUpTopImage(),
        Row(
          children: const [
            Spacer(),
            Expanded(
              flex: 8,
              child: SignUpForm(),
            ),
            Spacer(),
          ],
        ),
      ],
    );
  }
}

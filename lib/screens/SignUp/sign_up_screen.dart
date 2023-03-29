import 'package:calculator/screens/SignUp/mobile_sign_up_screen.dart';
import 'package:calculator/widgets/background.dart';
import 'package:calculator/widgets/responsive.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Background(
      topImage: 'assets/images/signup_top.png',
      bottomImage: 'assets/images/main_bottom.png',
      child: SingleChildScrollView(
        child: Responsive(
          mobile: MobileSignUpScreen(),
        ),
      ),
    );
  }
}

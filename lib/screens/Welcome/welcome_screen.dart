import 'package:calculator/screens/Welcome/mobile_welcome_screen.dart';
import 'package:calculator/widgets/background.dart';
import 'package:calculator/widgets/responsive.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Background(
        bottomImage: 'assets/images/main_bottom.png',
        child: SingleChildScrollView(
          child: SafeArea(
              child: Responsive(
            mobile: MobileWelcomeScreen(),
          )),
        ));
  }
}

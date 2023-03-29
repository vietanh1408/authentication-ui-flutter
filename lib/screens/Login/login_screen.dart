import 'package:calculator/screens/Login/mobile_login_screen.dart';
import 'package:calculator/widgets/background.dart';
import 'package:calculator/widgets/responsive.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Background(
        bottomImagePosition: 'right',
        child: SingleChildScrollView(
          child: Responsive(
            mobile: MobileLoginScreen(),
          ),
        ));
  }
}

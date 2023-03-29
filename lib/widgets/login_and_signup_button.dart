import 'package:calculator/constants/constants.dart';
import 'package:calculator/screens/Login/login_screen.dart';
import 'package:calculator/screens/SignUp/sign_up_screen.dart';
import 'package:flutter/material.dart';

class LoginAndSignupButton extends StatelessWidget {
  const LoginAndSignupButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Hero(
          tag: 'login_button',
          child: SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return const LoginScreen();
                    },
                  ),
                );
              },
              style: ButtonStyle(
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(24.0),
                  side: const BorderSide(color: Colors.transparent),
                )),
                backgroundColor: MaterialStateProperty.all(kPrimaryColor),
                padding: MaterialStateProperty.all(
                  const EdgeInsets.all(16.0),
                ),
              ),
              child: Text(
                'Login'.toUpperCase(),
                style: const TextStyle(color: Colors.white),
              ),
            ),
          ),
        ),
        const SizedBox(height: 16),
        SizedBox(
          width: double.infinity,
          child: ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return const SignUpScreen();
                  },
                ),
              );
            },
            style: ButtonStyle(
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(24.0),
                side: const BorderSide(color: Colors.transparent),
              )),
              backgroundColor: MaterialStateProperty.all(kPrimaryLightColor),
              padding: MaterialStateProperty.all(
                const EdgeInsets.all(16.0),
              ),
            ),
            child: Text(
              'Sign up'.toUpperCase(),
              style: const TextStyle(color: Colors.black),
            ),
          ),
        )
      ],
    );
  }
}

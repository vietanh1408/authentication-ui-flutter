import 'package:calculator/constants/constants.dart';
import 'package:calculator/screens/Login/login_screen.dart';
import 'package:flutter/material.dart';

class SignUpForm extends StatefulWidget {
  const SignUpForm({Key? key}) : super(key: key);

  @override
  State<SignUpForm> createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  bool _obscureText = true;

  void _toggle() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          TextFormField(
            keyboardType: TextInputType.emailAddress,
            textInputAction: TextInputAction.next,
            cursorColor: kPrimaryColor,
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderSide: const BorderSide(
                  width: 0,
                  style: BorderStyle.none,
                ),
                borderRadius: BorderRadius.circular(32.0),
              ),
              filled: true,
              fillColor: kPrimaryLightColor,
              hintText: 'Your email',
              prefixIcon: const Padding(
                padding: EdgeInsets.all(
                  defaultPadding,
                ),
                child: Icon(
                  Icons.person,
                  color: kPrimaryColor,
                  size: defaultPadding,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: defaultPadding,
            ),
            child: TextFormField(
              textInputAction: TextInputAction.done,
              obscureText: _obscureText,
              cursorColor: kPrimaryColor,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderSide: const BorderSide(
                    width: 0,
                    style: BorderStyle.none,
                  ),
                  borderRadius: BorderRadius.circular(32.0),
                ),
                filled: true,
                fillColor: kPrimaryLightColor,
                hintText: 'Your password',
                prefixIcon: const Padding(
                  padding: EdgeInsets.all(
                    defaultPadding,
                  ),
                  child: Icon(
                    Icons.lock,
                    color: kPrimaryColor,
                    size: defaultPadding,
                  ),
                ),
                suffixIcon: IconButton(
                  icon: Icon(
                    _obscureText ? Icons.visibility : Icons.visibility_off,
                    color: kPrimaryColor,
                    size: defaultPadding,
                  ),
                  onPressed: _toggle,
                  highlightColor: Colors.transparent,
                  splashColor: Colors.transparent,
                ),
              ),
            ),
          ),
          TextFormField(
            textInputAction: TextInputAction.done,
            obscureText: _obscureText,
            cursorColor: kPrimaryColor,
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderSide: const BorderSide(
                  width: 0,
                  style: BorderStyle.none,
                ),
                borderRadius: BorderRadius.circular(32.0),
              ),
              filled: true,
              fillColor: kPrimaryLightColor,
              hintText: 'Confirm your password',
              prefixIcon: const Padding(
                padding: EdgeInsets.all(
                  defaultPadding,
                ),
                child: Icon(
                  Icons.lock,
                  color: kPrimaryColor,
                  size: defaultPadding,
                ),
              ),
              suffixIcon: IconButton(
                icon: Icon(
                  _obscureText ? Icons.visibility : Icons.visibility_off,
                  color: kPrimaryColor,
                  size: defaultPadding,
                ),
                onPressed: _toggle,
                highlightColor: Colors.transparent,
                splashColor: Colors.transparent,
              ),
            ),
          ),
          const SizedBox(height: defaultPadding),
          Hero(
            tag: 'sign_up_btn',
            child: SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
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
                  'Sign up'.toUpperCase(),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: defaultPadding,
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) {
                  return const LoginScreen();
                }),
              );
            },
            child: const Text(
              "Already have an Account? Sign In",
              style: TextStyle(color: kPrimaryColor),
            ),
          )
        ],
      ),
    );
  }
}

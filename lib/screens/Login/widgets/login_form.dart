import 'package:calculator/constants/constants.dart';
import 'package:calculator/screens/SignUp/sign_up_screen.dart';
import 'package:flutter/material.dart';
import 'package:email_validator/email_validator.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({Key? key}) : super(key: key);

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  bool _obscureText = true;

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  void _toggle() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  void _handleLogin() {
    print(emailController.text);
    print(passwordController.text);
  }

  @override
  Widget build(BuildContext context) {
    return Form(
        child: Column(
      children: [
        TextFormField(
          controller: emailController,
          keyboardType: TextInputType.emailAddress,
          textInputAction: TextInputAction.next,
          cursorColor: kPrimaryColor,
          autovalidateMode: AutovalidateMode.always,
          validator: (value) => EmailValidator.validate(value!)
              ? null
              : "Please enter a valid email",
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderSide: const BorderSide(
                width: 0.5,
                style: BorderStyle.none,
              ),
              borderRadius: BorderRadius.circular(32.0),
            ),
            filled: true,
            focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(
                width: 0,
                style: BorderStyle.none,
              ),
              borderRadius: BorderRadius.circular(32.0),
            ),
            errorBorder: const OutlineInputBorder(
              borderSide: BorderSide(
                width: 0.5,
                style: BorderStyle.solid,
              ),
            ),
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
            controller: passwordController,
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
        const SizedBox(height: defaultPadding),
        Hero(
          tag: 'login_btn',
          child: SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: _handleLogin,
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
                return const SignUpScreen();
              }),
            );
          },
          child: const Text(
            "Don't have an Account? Sign Up",
            style: TextStyle(color: kPrimaryColor),
          ),
        )
      ],
    ));
  }
}

import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  const Background(
      {Key? key,
      required this.child,
      this.topImage = 'assets/images/main_top.png',
      this.bottomImage = 'assets/images/login_bottom.png',
      this.bottomImagePosition = 'left'})
      : super(key: key);

  final Widget child;

  final String topImage, bottomImage, bottomImagePosition;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: SizedBox(
          width: double.infinity,
          height: MediaQuery.of(context).size.height,
          child: Stack(
            alignment: Alignment.center,
            children: <Widget>[
              Positioned(
                top: 0,
                left: 0,
                child: Image.asset(
                  topImage,
                  width: 120,
                ),
              ),
              bottomImagePosition == 'left'
                  ? Positioned(
                      bottom: 0,
                      left: 0,
                      child: Image.asset(
                        bottomImage,
                        width: 120,
                      ),
                    )
                  : Positioned(
                      bottom: 0,
                      right: 0,
                      child: Image.asset(
                        bottomImage,
                        width: 120,
                      ),
                    ),
              SafeArea(child: child)
            ],
          ),
        ));
  }
}

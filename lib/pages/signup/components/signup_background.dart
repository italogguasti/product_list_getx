import 'package:flutter/material.dart';

class SignupBackground extends StatelessWidget {
  final Widget child;

  const SignupBackground({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SizedBox(
      height: size.height,
      width: double.infinity,
      // alignment: Alignment.center,
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Positioned(
            top: 0,
            left: 0,
            child: Image.asset(
              'assets/images/signup_top.png',
              width: size.width * .4,
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            child: Image.asset(
              'assets/images/main_bottom.png',
              width: size.width * .25,
            ),
          ),
          child,
        ],
      ),
    );
  }
}

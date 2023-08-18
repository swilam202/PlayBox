import 'package:flutter/material.dart';




class SplashPageBody extends StatelessWidget {
  const SplashPageBody({super.key,required this.animation});

  final Animation<double> animation;
  @override
  Widget build(BuildContext context) {
    return  ScaleTransition(
      scale: animation,
      child: SizedBox(
        height: 250,
        child: AspectRatio(
          aspectRatio: 2.5 / 5,
          child: Image.asset('assets/images/PlayBox.png'),
        ),
      ),
    );
  }
}

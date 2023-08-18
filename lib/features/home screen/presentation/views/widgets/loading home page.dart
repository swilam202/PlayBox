import 'dart:ui';

import 'package:flutter/material.dart';

import 'initial home page.dart';


class LoadingHomePage extends StatelessWidget {
  const LoadingHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        InitialHomePage(),
        BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5,), // Adjust sigma values for desired blur intensity
          child: Center(child: CircularProgressIndicator()),

        ),
      ],
    );
  }
}

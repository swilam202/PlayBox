import 'dart:ui';

import 'package:flutter/material.dart';

import 'initial state.dart';

class LoadingState extends StatelessWidget {
  const LoadingState({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const InitialState(onPressed: null),
        BackdropFilter(
          filter: ImageFilter.blur(
            sigmaX: 5,
            sigmaY: 5,
          ),
          // Adjust sigma values for desired blur intensity
          child: const Center(
            child: CircularProgressIndicator(),
          ),
        ),
      ],
    );
  }
}

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:reelswipe/core/utils/get%20file.dart';
import 'package:reelswipe/features/home%20screen/presentation/views/widgets/loading%20state.dart';
import 'package:video_player/video_player.dart';


class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LoadingState()

    );
  }
}

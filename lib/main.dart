import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'features/home screen/presentation/manager/home page cubit.dart';
import 'features/splash screen/presentation/views/splash page.dart';

void main() {
  runApp(const PlayBox());
}

class PlayBox extends StatelessWidget {
  const PlayBox({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<HomePageCubit>(
      create: (context) => HomePageCubit(),
      child: MaterialApp(
        theme: ThemeData(
          scaffoldBackgroundColor: Colors.black87,
          brightness: Brightness.dark,
        ),
        home: const SplashPage(),
      ),
    );
  }
}

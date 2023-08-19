import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../manager/home page cubit.dart';

class FailureState extends StatelessWidget {
  const FailureState({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'Oops! something went wrong please try again',
            style: TextStyle(
              fontSize: 22,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(
            onPressed: () {
              BlocProvider.of<HomePageCubit>(context).loadVideo();
            },
            child: const Text('Try again!'),
          ),
        ],
      ),
    );
  }
}

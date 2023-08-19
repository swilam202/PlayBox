import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../manager/home page cubit.dart';
import '../manager/home page state.dart';
import 'widgets/failure state.dart';
import 'widgets/initial state.dart';
import 'widgets/loading state.dart';
import 'widgets/success state.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<HomePageCubit, HomePageState>(
        builder: (context, state) {
          if (state is HomePageInitialState) {
            return InitialState(
              onPressed: () {
                BlocProvider.of<HomePageCubit>(context).loadVideo();
              },
            );
          } else if (state is HomePageSuccessState) {
            return SuccessState(path: state.path);
          } else if (state is HomePageFailureState) {
            return const FailureState();
          } else {
            return const LoadingState();
          }
        },
      ),
    );
  }
}

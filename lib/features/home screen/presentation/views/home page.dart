import 'dart:ui';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:reelswipe/core/utils/get%20file.dart';
import 'package:reelswipe/features/home%20screen/presentation/manager/home%20page%20cubit.dart';
import 'package:reelswipe/features/home%20screen/presentation/manager/home%20page%20state.dart';
import 'package:reelswipe/features/home%20screen/presentation/views/widgets/failure%20state.dart';
import 'package:reelswipe/features/home%20screen/presentation/views/widgets/initial%20state.dart';
import 'package:reelswipe/features/home%20screen/presentation/views/widgets/loading%20state.dart';
import 'package:reelswipe/features/home%20screen/presentation/views/widgets/success%20state.dart';
import 'package:video_player/video_player.dart';


class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<HomePageCubit,HomePageState>(
        builder: (context,state){
          if(state is HomePageInitialState){
            return InitialState(onPressed: (){
              print('object');
              //FilePickerResult? filePickerResult  = await FilePicker.platform.pickFiles(type: FileType.video,allowMultiple: false);
             // String? path = filePickerResult?.files.single.path;
              //print(path.toString());
              BlocProvider.of<HomePageCubit>(context).loadVideo();
          });
          }
          else if(state is HomePageSuccessState){
            return SuccessState(path: state.path);
          }
          else if(state is HomePageFailureState){
            return FailureState();
          }
          else{
            return LoadingState();
          }

        },
      )

    );
  }
}

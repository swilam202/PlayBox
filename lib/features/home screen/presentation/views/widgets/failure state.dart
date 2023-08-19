import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/utils/get file.dart';
import '../../manager/home page cubit.dart';


class FailureState extends StatelessWidget {
  const FailureState({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
        child:  Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Oops! something went wrong please try again',style: TextStyle(fontSize: 22,),textAlign: TextAlign.center,),
            SizedBox(height: 20,),
            ElevatedButton(onPressed: (){
              BlocProvider.of<HomePageCubit>(context).loadVideo();
            }, child: Text('Try again!'),),
          ],
        )

    );
  }
}

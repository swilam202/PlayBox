import 'package:flutter/material.dart';

import '../../../../../core/utils/get file.dart';


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
            ElevatedButton(onPressed: ()async{
              await getFile();
            }, child: Text('Try again!'),),
          ],
        )

    );
  }
}

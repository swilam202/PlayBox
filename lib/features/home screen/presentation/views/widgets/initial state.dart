import 'package:flutter/material.dart';
import 'package:reelswipe/core/utils/get%20file.dart';



class InitialState extends StatelessWidget {
  const InitialState({super.key,required this.onPressed});

  final Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(

        onPressed: ()async{
          onPressed;
        },
        child: Column(
          mainAxisSize: MainAxisSize.min,

          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 180,
              child: AspectRatio(
                aspectRatio: 2.5 / 5,
                child: Image.asset('assets/images/folder icon.png'),
              ),
            ),
            const Text('Pick video from device',style: TextStyle(fontSize: 18,color: Colors.white),)
          ],
        ),
      ),
    );
  }
}

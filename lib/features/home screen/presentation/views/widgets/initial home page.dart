import 'package:flutter/material.dart';
import 'package:reelswipe/core/utils/get%20file.dart';



class InitialHomePage extends StatelessWidget {
  const InitialHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(

        onPressed: ()async{
          await getFile();
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

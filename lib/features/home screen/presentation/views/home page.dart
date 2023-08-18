import 'package:flutter/material.dart';
import 'package:reelswipe/core/utils/get%20file.dart';


class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: TextButton(
          onPressed: ()async{
            await getFile();
          },
          child: Text('pick'),
        ),
      ),
    );
  }
}

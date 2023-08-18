import 'package:flutter/material.dart';
import 'package:reelswipe/features/home%20screen/presentation/views/home%20page.dart';
import 'package:reelswipe/features/splash%20screen/presentation/views/widgets/splash%20body.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> with SingleTickerProviderStateMixin{

  late AnimationController animationController;
  late Animation<double> animation;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    initializeAnimation();

  }








  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SplashPageBody(animation: animation),
      ),
    );
  }


  initializeAnimation(){
    animationController = AnimationController(vsync: this,duration: const Duration(seconds: 3),);
    animation = CurvedAnimation(parent: animationController, curve: Curves.bounceOut);
    animationController.forward().then((_) {
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>HomePage()));
    });
  }
}



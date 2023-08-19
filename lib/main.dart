import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:reelswipe/features/home%20screen/presentation/manager/home%20page%20cubit.dart';
import 'package:video_player/video_player.dart';

import 'features/splash screen/presentation/views/splash page.dart';

void main() {
  runApp(const ReelSwipe());
}

class ReelSwipe extends StatelessWidget {
  const ReelSwipe({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<HomePageCubit>(create: (context)=>HomePageCubit(),
      child:  MaterialApp(
        theme: ThemeData(
            scaffoldBackgroundColor: Colors.black87,
            brightness: Brightness.dark
        ),
        home: SplashPage(),
      ),
    );
  }
}














//
// class SplashPage extends StatefulWidget {
//   const SplashPage({super.key});
//
//   @override
//   State<SplashPage> createState() => _SplashPageState();
// }
//
// class _SplashPageState extends State<SplashPage> {
//  // String url =
//  //     'https://rr2---sn-hgn7rn7k.googlevideo.com/videoplayback?expire=1692216256&ei=YNfcZMibIMOXx_APmI6NuAo&ip=94.156.14.29&id=o-AArSfcRphxa2vUpD9WfhaaU8bG2Peu-Y7jTF-QGhPNLF&itag=18&source=youtube&requiressl=yes&spc=UWF9f8-zkXfVs3W4z4PWGUs3GxotxTI&vprv=1&svpuc=1&mime=video%2Fmp4&gir=yes&clen=5035309&ratebypass=yes&dur=92.647&lmt=1687445655041835&fexp=24007246,24350018,24363392,51000011&beids=24350018&c=ANDROID&txp=5319224&sparams=expire%2Cei%2Cip%2Cid%2Citag%2Csource%2Crequiressl%2Cspc%2Cvprv%2Csvpuc%2Cmime%2Cgir%2Cclen%2Cratebypass%2Cdur%2Clmt&sig=AOq0QJ8wRQIhAO759axlKx-XZ1uiSnl9vL3uR4Pn8oFDvUMaDMdhhub6AiB-LHPcXu7gUpIQ0IoSiyIEs_C2iTP5Bc89IkeTn2GQtg%3D%3D&title=Travel%20to%20Jordan%20%7C%20Cinematic%20Video&rm=sn-4g5ekd7s&req_id=5d3e5b5bf708a3ee&ipbypass=yes&redirect_counter=2&cm2rm=sn-xupn5a5uxbt-j5p67l&cms_redirect=yes&cmsv=e&mh=_p&mip=154.237.253.182&mm=29&mn=sn-hgn7rn7k&ms=rdu&mt=1692194463&mv=m&mvi=2&pl=20&lsparams=ipbypass,mh,mip,mm,mn,ms,mv,mvi,pl&lsig=AG3C_xAwRAIgUSRmT-Su-xf8Dh_HEcMCbWpfm2-L3ixmmPvtqcC85eMCIDZqzLmBjvnI00TmF_W7OIo0J4_0BxjyFsj6kNLtx9u8';
//
//   late VideoPlayerController controller;
//   late ChewieController chewieController;
//   @override
//   void initState() {
//     super.initState();
//     controller = VideoPlayerController.asset('assets/test.mp4')
//       ..initialize().then((_) {
//         setState(() {});
//       });
//
//     chewieController = ChewieController(
//         videoPlayerController: controller,
//       fullScreenByDefault: true
//     );
//   }
//
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: SizedBox(
//           height: 350,
//           child: AspectRatio(
//             aspectRatio: controller.value.aspectRatio,
//             child: Chewie(controller: chewieController),
//           ),
//         )
//       ),
//     );
//   }
// }
//
//













/*
class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {

  late VideoPlayerController videoPlayerController;
 // late ChewieController chewieController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    videoPlayerController = VideoPlayerController.networkUrl(Uri.parse(url))..initialize().then((_) {
      print('init++++++++++++++++++++++++++++++++++++');
setState(() {

});
    });
    // chewieController = ChewieController(
    //     videoPlayerController: videoPlayerController,
    //     autoPlay: true,
    //     looping: true);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
        videoPlayerController.value.isInitialized
        ? AspectRatio(
        aspectRatio: videoPlayerController.value.aspectRatio,
          child: VideoPlayer(videoPlayerController),
        )
              : Container(),

          ],
        ),
      ),
    );
  }
}


class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}




class _SplashPageState extends State<SplashPage> {
     // double sliderVal = 0.0;
  String url = 'https://rr2---sn-hgn7rn7k.googlevideo.com/videoplayback?expire=1692216256&ei=YNfcZMibIMOXx_APmI6NuAo&ip=94.156.14.29&id=o-AArSfcRphxa2vUpD9WfhaaU8bG2Peu-Y7jTF-QGhPNLF&itag=18&source=youtube&requiressl=yes&spc=UWF9f8-zkXfVs3W4z4PWGUs3GxotxTI&vprv=1&svpuc=1&mime=video%2Fmp4&gir=yes&clen=5035309&ratebypass=yes&dur=92.647&lmt=1687445655041835&fexp=24007246,24350018,24363392,51000011&beids=24350018&c=ANDROID&txp=5319224&sparams=expire%2Cei%2Cip%2Cid%2Citag%2Csource%2Crequiressl%2Cspc%2Cvprv%2Csvpuc%2Cmime%2Cgir%2Cclen%2Cratebypass%2Cdur%2Clmt&sig=AOq0QJ8wRQIhAO759axlKx-XZ1uiSnl9vL3uR4Pn8oFDvUMaDMdhhub6AiB-LHPcXu7gUpIQ0IoSiyIEs_C2iTP5Bc89IkeTn2GQtg%3D%3D&title=Travel%20to%20Jordan%20%7C%20Cinematic%20Video&rm=sn-4g5ekd7s&req_id=5d3e5b5bf708a3ee&ipbypass=yes&redirect_counter=2&cm2rm=sn-xupn5a5uxbt-j5p67l&cms_redirect=yes&cmsv=e&mh=_p&mip=154.237.253.182&mm=29&mn=sn-hgn7rn7k&ms=rdu&mt=1692194463&mv=m&mvi=2&pl=20&lsparams=ipbypass,mh,mip,mm,mn,ms,mv,mvi,pl&lsig=AG3C_xAwRAIgUSRmT-Su-xf8Dh_HEcMCbWpfm2-L3ixmmPvtqcC85eMCIDZqzLmBjvnI00TmF_W7OIo0J4_0BxjyFsj6kNLtx9u8';
  late VideoPlayerController controller;
  //RXXX dataController = Get.put(RXXX());

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller = 
    VideoPlayerController.networkUrl(Uri.parse(url))..initialize().then((_) {
      dataController.videoPosition.value = controller.value.position.inSeconds.toDouble();
       setState((){});
    });
  }


  id()async{
  //  int a = await controller.value.position.inSeconds;
   // print(a!.inSeconds);
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
         /* Slider(value:dataController.videoPosition.value, onChanged: (val)async{
                     await controller.seekTo(Duration(seconds: val.toInt()));
                     
                      setState(() {
                        sliderVal = val;
                      });

                    },
                    min: 0.0,
                    max: controller.value.duration.inSeconds.toDouble(),
                    
                    ),
            
                    Text(sliderVal.toString(),style: TextStyle(fontSize: 35),),*/
            controller.value.isInitialized ? 
                    AspectRatio(
                    aspectRatio: controller.value.aspectRatio,
                    child: VideoPlayer(controller),
                  )
                : Container(),
          ],
        ),
      ),
         floatingActionButton: FloatingActionButton(
          onPressed: (){
            controller.value.isPlaying ? controller.pause():controller.play();
           // controller.seekTo(Duration(seconds: 30));
            setState(() {
              
            });
          },
          child: controller.value.isPlaying ? Icon(Icons.pause):Icon(Icons.play_arrow),
          ),
    );
  }
}


class RXXX extends GetxController{
  final  RxDouble videoPosition= 0.0.obs;
}

*/

/*

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}


class _SplashPageState extends State<SplashPage> {
  String url = 'https://rr2---sn-hgn7rn7k.googlevideo.com/videoplayback?expire=1692216256&ei=YNfcZMibIMOXx_APmI6NuAo&ip=94.156.14.29&id=o-AArSfcRphxa2vUpD9WfhaaU8bG2Peu-Y7jTF-QGhPNLF&itag=18&source=youtube&requiressl=yes&spc=UWF9f8-zkXfVs3W4z4PWGUs3GxotxTI&vprv=1&svpuc=1&mime=video%2Fmp4&gir=yes&clen=5035309&ratebypass=yes&dur=92.647&lmt=1687445655041835&fexp=24007246,24350018,24363392,51000011&beids=24350018&c=ANDROID&txp=5319224&sparams=expire%2Cei%2Cip%2Cid%2Citag%2Csource%2Crequiressl%2Cspc%2Cvprv%2Csvpuc%2Cmime%2Cgir%2Cclen%2Cratebypass%2Cdur%2Clmt&sig=AOq0QJ8wRQIhAO759axlKx-XZ1uiSnl9vL3uR4Pn8oFDvUMaDMdhhub6AiB-LHPcXu7gUpIQ0IoSiyIEs_C2iTP5Bc89IkeTn2GQtg%3D%3D&title=Travel%20to%20Jordan%20%7C%20Cinematic%20Video&rm=sn-4g5ekd7s&req_id=5d3e5b5bf708a3ee&ipbypass=yes&redirect_counter=2&cm2rm=sn-xupn5a5uxbt-j5p67l&cms_redirect=yes&cmsv=e&mh=_p&mip=154.237.253.182&mm=29&mn=sn-hgn7rn7k&ms=rdu&mt=1692194463&mv=m&mvi=2&pl=20&lsparams=ipbypass,mh,mip,mm,mn,ms,mv,mvi,pl&lsig=AG3C_xAwRAIgUSRmT-Su-xf8Dh_HEcMCbWpfm2-L3ixmmPvtqcC85eMCIDZqzLmBjvnI00TmF_W7OIo0J4_0BxjyFsj6kNLtx9u8';
  //late VideoPlayerController controller;

/*
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller = 
    VideoPlayerController.networkUrl(Uri.parse(url))..initialize().then((_) {
       setState((){});
    });
  }
*/





  @override
  Widget build(BuildContext context) {
    double sliderVal = 0.0;
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
             /* controller.value.isInitialized ? 
                  AspectRatio(
                  aspectRatio: controller.value.aspectRatio,
                  child: VideoPlayer(controller),
                )
              : Container(),*/

              Slider(value: sliderVal, onChanged: (val){
               
               
                setState(() {
                  sliderVal = val;
                });
              },
              min: 0.0,
              max: 100.0,
              divisions: 100,
              )
        ]
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: (){
            //controller.value.isPlaying ? controller.pause():controller.play();
           // controller.seekTo(Duration(seconds: 30));
            setState(() {
              
            });
          },
          child: Icon(Icons.play_arrow),
          ),
    );
  }
}

*/

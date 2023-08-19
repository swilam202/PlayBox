import 'dart:io';

import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';



class SuccessState extends StatefulWidget {
  const SuccessState({super.key,required this.path});

  final String path;
  @override
  State<SuccessState> createState() => _SuccessStateState();
}

class _SuccessStateState extends State<SuccessState> {

  late VideoPlayerController videoPlayerController;
  late ChewieController chewieController;


  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    videoPlayerController = VideoPlayerController.file(File(widget.path))..initialize().then((_){
      chewieController = ChewieController(videoPlayerController: videoPlayerController);
    });
  }




  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
          height: 350,
          child: AspectRatio(
            aspectRatio: 2.5/1.5, //videoPlayerController.value.aspectRatio,
            child: Chewie(controller: chewieController),
          ),
        ),
    );
  }
}

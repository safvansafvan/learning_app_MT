import 'package:flutter/material.dart';
import 'package:task2/view/widget/video_widget/video_details_topic.dart';
import 'package:task2/view/widget/video_widget/video_listed_widget.dart';

class PlayVideoScreen extends StatelessWidget {
  const PlayVideoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SafeArea(
            child: Stack(
              children: [
                Container(
                  width: double.infinity,
                  height: 219,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(
                            'assets/images/Class_video.png',
                          ),
                          fit: BoxFit.cover)),
                ),
                Positioned(
                    child: IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: const Icon(
                          Icons.arrow_back,
                          color: Colors.white,
                        )))
              ],
            ),
          ),
          const VideoDetailsAndTopic(),
          const VideosListedWidget()
        ],
      ),
    );
  }
}

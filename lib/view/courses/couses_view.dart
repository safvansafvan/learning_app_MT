import 'package:flutter/material.dart';

import 'package:task2/view/widget/course_widget/video_listed_view.dart';
import 'package:task2/view/widget/course_widget/video_screen_card.dart';

class CoursesView extends StatelessWidget {
  const CoursesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: 120,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color(0xFF5A3588),
                    Color(0xFF7F56B3),
                  ],
                ),
              ),
              child: Column(
                children: [
                  const SizedBox(height: 20),
                  Row(
                    children: [
                      IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: const Icon(
                          Icons.arrow_back_ios_new_rounded,
                          color: Colors.white,
                        ),
                      ),
                      const Align(
                        alignment: Alignment.center,
                        child: Text(
                          'Course Name',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
            const VideoScreenCards(),
            const VideoListedViewForVideoScreen()
          ],
        ),
      ),
    );
  }
}

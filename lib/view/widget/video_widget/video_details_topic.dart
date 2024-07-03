import 'package:flutter/material.dart';

class VideoDetailsAndTopic extends StatelessWidget {
  const VideoDetailsAndTopic({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Subject Name',
            style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'Part - 01',
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                      color: Color(0xffADADAD)),
                ),
                Text(
                  '1hr 37m',
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                      color: Color(0xffADADAD)),
                )
              ],
            ),
          ),
          const SizedBox(height: 5),
          const Text(
            'Topics Covered',
            style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Row(
              children: [
                Container(
                  width: 152,
                  height: 37,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey[300]!),
                      borderRadius: BorderRadius.circular(20)),
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset('assets/icon/play_video1.png', height: 30),
                        const SizedBox(width: 5),
                        const Text('White Critically'),
                      ],
                    ),
                  ),
                ),
                Container(
                  width: 201,
                  height: 37,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey[300]!),
                      borderRadius: BorderRadius.circular(20)),
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset('assets/icon/play_video2.png', height: 30),
                        const SizedBox(width: 5),
                        const Text('Recognize & Reinforce'),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

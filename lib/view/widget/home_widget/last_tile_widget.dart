import 'package:flutter/material.dart';

class LastTestWidget extends StatelessWidget {
  const LastTestWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Align(
          alignment: Alignment.topLeft,
          child: Padding(
            padding: EdgeInsets.only(left: 15, bottom: 15),
            child: Text(
              'Latest Test Series',
              style: TextStyle(fontWeight: FontWeight.w700, fontSize: 16),
            ),
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              buildSeriesCard(const Color(0xffAE52B5), const Color(0xffBF64AE),
                  "Exam 102 - Biology ", "10 Questions", '120 mins'),
              buildSeriesCard(const Color(0xffAE52B5), const Color(0xffBF64AE),
                  "Exam 102 - Biology ", "10 Questions", '120 mins'),
              buildSeriesCard(const Color(0xffAE52B5), const Color(0xffBF64AE),
                  "Exam 102 - Biology ", "10 Questions", '120 mins')
            ],
          ),
        )
      ],
    );
  }

  Widget buildSeriesCard(Color gradient1, Color gradient2, String text1,
      String text2, String text3) {
    return Container(
      width: 165,
      height: 116,
      margin: const EdgeInsets.symmetric(horizontal: 15),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [
                gradient1,
                gradient2,
              ])),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            text1,
            style: const TextStyle(
                fontWeight: FontWeight.w600, fontSize: 14, color: Colors.white),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  text2,
                  style: const TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                      color: Colors.white),
                ),
                const SizedBox(width: 5),
                Text(
                  text3,
                  style: const TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                      color: Colors.white),
                ),
              ],
            ),
          ),
          Container(
            width: 135,
            height: 27,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(8)),
            child: const Center(
              child: Text(
                'Attempt Now',
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 12),
              ),
            ),
          )
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HeaderTiles extends StatelessWidget {
  const HeaderTiles({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          buildCard('assets/svg/9913468.svg', 'Exam', const Color(0xffED617B)),
          buildCard('/assets/svg/download.svg.svg', 'Practice',
              const Color(0xffFFAF01)),
          buildCard(
              'assets/svg/9913468.svg', 'Materials', const Color(0xff24AED2))
        ],
      ),
    );
  }

  Widget buildCard(String imagePath, String title, Color color) {
    return Container(
      width: 100,
      height: 100,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          SvgPicture.asset(
            imagePath,
            width: 50,
            height: 50,
          ),
          const SizedBox(height: 8),
          Text(
            title,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 12,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}

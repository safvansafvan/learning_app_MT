import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CoursesWidget extends StatelessWidget {
  const CoursesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              'Courses',
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 16,
              ),
            ),
            GestureDetector(
              onTap: () {},
              child: const Text(
                'See All',
                style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 16,
                    color: Color(0xff512E7E)),
              ),
            )
          ],
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              buildCircle('assets/svg/9913468.svg', 'KTET',
                  const Color(0xff14C8C5).withOpacity(0.5)),
              buildCircle('assets/svg/9913468.svg', 'LP/UP/HST',
                  const Color(0xffFDDD7A).withOpacity(0.5)),
              buildCircle('assets/svg/9913468.svg', 'SET',
                  const Color(0xffF5C589).withOpacity(0.5))
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              buildCircle('assets/svg/9913468.svg', 'NET',
                  const Color(0xffFCA7A9).withOpacity(0.5)),
              buildCircle('assets/svg/9913468.svg', 'Montessori',
                  const Color(0xffC2A9FB).withOpacity(0.5)),
              buildCircle('assets/svg/9913468.svg', 'Crash ',
                  const Color(0xffF868AF).withOpacity(0.5))
            ],
          ),
        ),
      ],
    );
  }

  Widget buildCircle(String imagePath, String title, Color color) {
    return Column(
      children: [
        CircleAvatar(
          radius: 40,
          backgroundColor: color,
          child: SvgPicture.asset(imagePath),
        ),
        const SizedBox(height: 5),
        Text(
          title,
          style: const TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
        )
      ],
    );
  }
}

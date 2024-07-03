import 'package:flutter/material.dart';

class PracticePreviousYearPapper extends StatelessWidget {
  const PracticePreviousYearPapper({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          margin: const EdgeInsets.only(top: 30, bottom: 20),
          width: 348,
          height: 144,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(14),
              color: const Color(0xffF6EAB6)),
          child: const Padding(
            padding: EdgeInsets.only(top: 20, left: 20),
            child: Text(
              'Practice With Previous Year\nQuestion Papers',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
            ),
          ),
        ),
        const Positioned(
          bottom: 1,
          left: 348 / 2 - 20,
          child: CircleAvatar(
            radius: 20,
            backgroundColor: Color(0xff512E7E),
            child: Icon(
              Icons.arrow_forward,
              color: Colors.white,
            ),
          ),
        ),
        Positioned(
            bottom: 50,
            right: 10,
            child: Image.asset('assets/images/person.png'))
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:task2/view/widget/app_bar.dart';
import 'package:task2/view/widget/courses_widget.dart';
import 'package:task2/view/widget/header_tiles.dart';
import 'package:task2/view/widget/previous_year.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            AppBarWidget(),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  HeaderTiles(),
                  CoursesWidget(),
                  PracticePreviousYearPapper()
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

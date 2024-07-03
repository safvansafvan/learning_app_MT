import 'package:flutter/material.dart';
import 'package:task2/api_service/api_service.dart';
import 'package:task2/view/widget/home_widget/app_bar.dart';
import 'package:task2/view/widget/home_widget/courses_widget.dart';
import 'package:task2/view/widget/home_widget/header_tiles.dart';
import 'package:task2/view/widget/home_widget/previous_year.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  void initState() {
    ApiService().getCourses();
    super.initState();
  }

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
                  PracticePreviousYearPapper(),
                  SizedBox(height: 30)
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

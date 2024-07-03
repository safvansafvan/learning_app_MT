import 'dart:convert';
import 'dart:developer';
import 'package:http/http.dart' as http;

class ApiService {
  final String baseUrl = "https://trogon.info/tutorpro/edspark/api/";
  final String authToken =
      "eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpZCI6IjE5IiwidXNlcl9pZCI6IjE5Iiwicm9sZV9pZCI6IjIiLCJyb2xlX2xhYmVsIjoiVXNlciIsInBob25lIjoiOTk0NjgwMTEwMCJ9.D0tUEBGDi8gtc1vEK6GL4aFdwDEd6uBCpIQ7G0J5fEM";

  Future<List<dynamic>> getCourses() async {
    final response = await http.get(
      Uri.parse("${baseUrl}my_course"),
      headers: {
        'Authorization': 'Bearer $authToken',
      },
    );

    if (response.statusCode == 200) {
      log(response.body);
      return json.decode(response.body);
    } else {
      throw Exception('Failed to load courses');
    }
  }

  Future<List<dynamic>> getLevelsByCourse(int courseId, int sectionId) async {
    final response = await http.get(
      Uri.parse(
          "${baseUrl}levels_by_course?course_id=$courseId§ion_id=$sectionId"),
      headers: {
        'Authorization': 'Bearer $authToken',
      },
    );

    if (response.statusCode == 200) {
      log(response.body);
      return json.decode(response.body);
    } else {
      throw Exception('Failed to load levels');
    }
  }

  Future<List<dynamic>> getLessonVideos(int lessonId) async {
    final response = await http.get(
      Uri.parse("${baseUrl}get_lesson_videos?lesson_id=$lessonId"),
      headers: {
        'Authorization': 'Bearer $authToken',
      },
    );
    if (response.statusCode == 200) {
      log(response.body);
      return json.decode(response.body);
    } else {
      throw Exception('Failed to load lesson videos');
    }
  }
}

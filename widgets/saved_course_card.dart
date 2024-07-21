import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/course.dart';





class SavedCourseCard extends StatelessWidget {
  final Course course;

  SavedCourseCard({required this.course});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Image.asset(course.imagePath, width: 50, height: 50, fit: BoxFit.cover),
        title: Text(course.title),
        subtitle: Text(course.instructor),
      ),
    );
  }
}

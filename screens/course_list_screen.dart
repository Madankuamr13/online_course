import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/course.dart';
import 'package:flutter_application_1/widgets/course_card.dart';

import 'package:flutter_application_1/screens/course_details_screen.dart';


class CourseListScreen extends StatelessWidget {
  static const routeName = '/course-list';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Course List'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 16.0,
            mainAxisSpacing: 16.0,
          ),
          itemCount: courses.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                Navigator.pushNamed(
                  context,
                  CourseDetailsScreen.routeName,
                  arguments: courses[index],
                );
              },
              child: CourseCard(course: courses[index]),
            );
          },
        ),
      ),
    );
  }
}

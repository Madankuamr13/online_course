import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/course.dart';

class CourseDetailsScreen extends StatefulWidget {
  final Course course;

  CourseDetailsScreen({required this.course});

  @override
  _CourseDetailsScreenState createState() => _CourseDetailsScreenState();
}

class _CourseDetailsScreenState extends State<CourseDetailsScreen> {
  bool _enrolled = false;

  void _enroll() {
    setState(() {
      _enrolled = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.course.title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(widget.course.imagePath),
            SizedBox(height: 16),
            Text(widget.course.title, style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            SizedBox(height: 16),
            Text(widget.course.description),
            Spacer(),
            if (_enrolled)
              Text('You have enrolled for this course!', style: TextStyle(color: Colors.green, fontSize: 16))
            else
              ElevatedButton(
                onPressed: _enroll,
                child: Text('Enroll'),
              ),
          ],
        ),
      ),
    );
  }
}

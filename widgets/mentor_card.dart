import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/mentor.dart';




class MentorCard extends StatelessWidget {
  final Mentor mentor;

  MentorCard({required this.mentor});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(mentor.name),
        subtitle: Text(mentor.title),
      ),
    );
  }
}

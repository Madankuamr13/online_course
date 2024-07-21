import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/mentor.dart'; // Import the Mentor class

class TopMentorCard extends StatelessWidget {
  final Mentor mentor;

  TopMentorCard({required this.mentor});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            CircleAvatar(
              radius: 25,
              
            ),
            Text(
              mentor.name,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            
            
          ],
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  final TextEditingController searchController;

  CustomAppBar({required this.searchController});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        // Search bar
        Expanded(
          child: TextField(
            controller: searchController,
            decoration: InputDecoration(
              labelText: 'Search Courses',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8.0),
              ),
            ),
          ),
        ),
        SizedBox(width: 16),
        // Profile picture
        CircleAvatar(
          backgroundImage: AssetImage('assets/profile.jpg'), // Ensure the path is correct
          radius: 20,
        ),
      ],
    );
  }
}

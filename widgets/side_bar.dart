import 'package:flutter/material.dart';

class Sidebar extends StatelessWidget {
  final Function(int) onItemSelected;

  Sidebar({required this.onItemSelected});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250, // Fixed width for the sidebar
      color: Colors.blue[100],
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          DrawerHeader(
            child: Text('Bento', style: TextStyle(fontSize: 24)),
          ),
          ListTile(
            leading: Icon(Icons.dashboard),
            title: Text('Dashboard'),
            onTap: () => onItemSelected(0),
          ),
          ListTile(
            leading: Icon(Icons.book),
            title: Text('Courses'),
            onTap: () => onItemSelected(1),
          ),
          ListTile(
            leading: Icon(Icons.schedule),
            title: Text('Routine'),
            onTap: () => onItemSelected(2),
          ),
          ListTile(
            leading: Icon(Icons.book),
            title: Text('Exam'),
            onTap: () => onItemSelected(3),
          ),
          ListTile(
            leading: Icon(Icons.insert_chart),
            title: Text('Results'),
            onTap: () => onItemSelected(4),
          ),
          ListTile(
            leading: Icon(Icons.people),
            title: Text('Students'),
            onTap: () => onItemSelected(5),
          ),
          ListTile(
            leading: Icon(Icons.message),
            title: Text('Message'),
            onTap: () => onItemSelected(6),
          ),
          ListTile(
            leading: Icon(Icons.notification_important),
            title: Text('Notice Board'),
            onTap: () => onItemSelected(7),
          ),
          ListTile(
            leading: Icon(Icons.live_tv),
            title: Text('Live Class'),
            onTap: () => onItemSelected(8),
          ),
        ],
      ),
    );
  }
}

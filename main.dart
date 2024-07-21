import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/side_bar.dart';
import 'package:flutter_application_1/widgets/app_bar.dart';
import 'package:flutter_application_1/widgets/course_card.dart';
import 'package:flutter_application_1/widgets/mentor_card.dart';
import 'package:flutter_application_1/widgets/saved_course_card.dart';
import 'package:flutter_application_1/models/course.dart';
import 'package:flutter_application_1/models/mentor.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MainScreen(),
    );
  }
}

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  TextEditingController _searchController = TextEditingController();
  List<Course> _filteredCourses = courses;
  int _selectedOption = 1;  // Default to "Courses"

  @override
  void initState() {
    super.initState();
    _searchController.addListener(_filterCourses);
  }

  void _filterCourses() {
    String query = _searchController.text.toLowerCase();
    setState(() {
      _filteredCourses = courses.where((course) {
        return course.title.toLowerCase().contains(query);
      }).toList();
    });
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  Widget _getSelectedContent() {
    switch (_selectedOption) {
      case 0:
        return Center(child: Text('Dashboard Content'));
      case 1:
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('All Courses', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            Expanded(
              child: Container(
                padding: const EdgeInsets.only(top: 16.0),
                child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    crossAxisSpacing: 16.0,
                    mainAxisSpacing: 16.0,
                    childAspectRatio: 1.0,
                  ),
                  itemCount: _filteredCourses.length,
                  itemBuilder: (context, index) {
                    return CourseCard(course: _filteredCourses[index]);
                  },
                ),
              ),
            ),
          ],
        );
      case 2:
        return Center(child: Text('Routine Content'));
      case 3:
        return Center(child: Text('Exam Content'));
      case 4:
        return Center(child: Text('Results Content'));
      case 5:
        return Center(child: Text('Students Content'));
      case 6:
        return Center(child: Text('Message Content'));
      case 7:
        return Center(child: Text('Notice Board Content'));
      case 8:
        return Center(child: Text('Live Class Content'));
      default:
        return Center(child: Text('Select an option from the sidebar'));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          // Sidebar on the left
          Sidebar(
            onItemSelected: (int index) {
              setState(() {
                _selectedOption = index;
              });
            },
          ),
          
          // Main content area
          Expanded(
            flex: 4,
            child: Column(
              children: [
                CustomAppBar(searchController: _searchController),
                SizedBox(height: 16),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: _getSelectedContent(),
                  ),
                ),
              ],
            ),
          ),
          
          // Fixed-width section on the right
          Container(
            width: 300,
            color: Colors.grey[200],
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Top Mentors', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
                  SizedBox(height: 16),
                  Expanded(
                    child: ListView.builder(
                      itemCount: mentors.length,
                      itemBuilder: (context, index) {
                        return MentorCard(mentor: mentors[index]);
                      },
                    ),
                  ),
                  SizedBox(height: 16),
                  Text('Saved Courses', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
                  SizedBox(height: 16),
                  Expanded(
                    child: ListView.builder(
                      itemCount: savedCourses.length,
                      itemBuilder: (context, index) {
                        return SavedCourseCard(course: savedCourses[index]);
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

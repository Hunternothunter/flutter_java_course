import 'package:flutter/material.dart';
import '../models/course.dart';
import '../pages/module_list_screen.dart'; // Updated import

class CourseCard extends StatelessWidget {
  final Course course;

  const CourseCard({super.key, required this.course});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => ModuleListScreen(course: course),
            ),
          );
        },
        child: ListTile(
          title: Text(course.title),
          subtitle: Text(course.description),
        ),
      ),
    );
  }
}

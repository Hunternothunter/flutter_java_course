import 'package:flutter/material.dart';
import '../models/course.dart';
import '../screens/course_list_screen.dart';

class ModuleListScreen extends StatelessWidget {
  final Course course;

  const ModuleListScreen({super.key, required this.course});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(course.title),
      ),
      body: ListView.builder(
        itemCount: course.modules.length,
        itemBuilder: (context, index) {
          final module = course.modules[index];
          return ListTile(
            title: Text(module.title),
            subtitle: Text(module.content),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ModuleDetailScreen(module: module),
                ),
              );
            },
          );
        },
      ),
    );
  }
}

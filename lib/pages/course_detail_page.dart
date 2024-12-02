import 'package:flutter/material.dart';
import 'package:flutter_highlight/flutter_highlight.dart';
import 'package:flutter_highlight/themes/vs.dart';
import '../../models/course.dart';  // Assuming Course and Module are correctly defined
import 'package:java_learning_platform/pages/module_detail_screen.dart';  // Import the ModuleDetailScreen

class CourseDetailPage extends StatelessWidget {
  final Course course;

  const CourseDetailPage({super.key, required this.course});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(course.title, style: const TextStyle(color: Colors.white)),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                course.description,
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(fontSize: 16),
              ),
              const SizedBox(height: 20),
              // Display modules as clickable items
              ...course.modules.map((module) => Column(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ModuleDetailScreen(module: module),
                            ),
                          );
                        },
                        child: _buildModule(module),
                      ),
                      const Divider(thickness: 1, height: 30),
                    ],
                  )),
            ],
          ),
        ),
      ),
    );
  }

  // Helper method to build the module preview
  Widget _buildModule(Module module) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          module.title,
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
        ),
        const SizedBox(height: 10),
        Text(
          module.content,
          style: const TextStyle(fontSize: 14),
        ),
        const SizedBox(height: 10),
        // Show code example as a preview in the list
        HighlightView(
          module.codeExample,
          language: 'java',
          theme: vsTheme,
          padding: const EdgeInsets.all(12),
          textStyle: const TextStyle(
            fontFamily: 'Courier New',
            fontSize: 14,
          ),
        ),
      ],
    );
  }
}

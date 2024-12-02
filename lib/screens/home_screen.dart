// import 'package:flutter/material.dart';
// import '../models/course.dart';
// import '../widgets/course_card.dart';

// class HomeScreen extends StatelessWidget {
//   HomeScreen({Key? key}) : super(key: key);

//   final List<Course> courses = [
//     Course(
//       title: 'Introduction to Java',
//       description: 'Learn the basics of Java programming.',
//       imageUrl: 'https://via.placeholder.com/150',
//     ),
//     // Add more courses here
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Java Learning Platform'),
//       ),
//       body: ListView.builder(
//         itemCount: courses.length,
//         itemBuilder: (context, index) {
//           return CourseCard(course: courses[index]);
//         },
//       ),
//     );
//   }
// }

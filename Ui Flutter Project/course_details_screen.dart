import 'package:flutter/material.dart';
import 'profile_page.dart'; // Correct import path for profile page

class CourseDetailsScreen extends StatelessWidget {
  final Map<String, dynamic> course; // Assuming Course is represented by a Map

  CourseDetailsScreen({required this.course});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(course['name']),
        actions: [
          IconButton(
            icon: Icon(Icons.person),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => ProfilePage()));
            },
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Course Name: ${course['name']}',
              style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8.0),
            Text('Description: ${course['description']}'),
            SizedBox(height: 8.0),
            Text('Instructor: ${course['instructor']}'),
            SizedBox(height: 8.0),
            Text('Duration: ${course['duration']}'),
            SizedBox(height: 8.0),
            Text('Price: ${course['price']}'),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                // Implement logic to enroll in the course
              },
              child: Text('Enroll Now'),
            ),
          ],
        ),
      ),
    );
  }
}

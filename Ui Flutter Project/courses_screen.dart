import 'package:flutter/material.dart';
import 'course_details_screen.dart'; // Correct import path for course details screen

class CoursesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Dummy list of courses
    List<Map<String, dynamic>> courses = [
      {
        'name': 'Basic Driving Course',
        'description': 'Learn the basics of driving and traffic rules',
        'instructor': 'vidhya',
        'duration': '4 weeks',
        'price': '\$200',
      },
      {
        'name': 'Defensive Driving Course',
        'description': 'Improve your driving skills and learn defensive driving techniques',
        'instructor': 'shankar',
        'duration': '6 weeks',
        'price': '\$300',
      },
      // Add more courses as needed
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text('Courses'),
      ),
      backgroundColor: Colors.grey[200], // Custom background color
      body: ListView.builder(
        itemCount: courses.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => CourseDetailsScreen(course: courses[index]),
                ),
              );
            },
            child: Card(
              margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
              child: Padding(
                padding: EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          courses[index]['name'],
                          style: TextStyle(
                            fontSize: 20.0, // Increased font size
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Icon(Icons.arrow_forward),
                      ],
                    ),
                    SizedBox(height: 8.0),
                    Text(
                      courses[index]['description'],
                      style: TextStyle(
                        fontSize: 16.0, // Increased font size
                      ),
                    ),
                    SizedBox(height: 8.0),
                    Row(
                      children: [
                        Icon(Icons.person),
                        SizedBox(width: 4.0),
                        Text('Instructor: ${courses[index]['instructor']}'),
                      ],
                    ),
                    SizedBox(height: 4.0),
                    Row(
                      children: [
                        Icon(Icons.access_time),
                        SizedBox(width: 4.0),
                        Text('Duration: ${courses[index]['duration']}'),
                      ],
                    ),
                    SizedBox(height: 4.0),
                    Row(
                      children: [
                        Icon(Icons.attach_money),
                        SizedBox(width: 4.0),
                        Text('Price: ${courses[index]['price']}'),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

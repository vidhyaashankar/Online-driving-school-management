import 'package:flutter/material.dart';
import 'courses_screen.dart'; // Import your courses screen

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      backgroundColor: Color(0xFF5CD65C), // Set background color to match home page
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.account_circle,
              size: 100.0,
              color: Colors.black,
            ),
            SizedBox(height: 20.0),
            TextFormField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.person, color: Colors.white), // Icon color set to white
                labelText: 'Username/Email',
                labelStyle: TextStyle(color: Colors.white), // Text color set to white
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white), // Border color set to white
                ),
              ),
            ),
            SizedBox(height: 20.0),
            TextFormField(
              obscureText: true,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.lock, color: Colors.white), // Icon color set to white
                labelText: 'Password',
                labelStyle: TextStyle(color: Colors.white), // Text color set to white
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white), // Border color set to white
                ),
              ),
            ),
            SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacementNamed(context, '/courses');
              },
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                child: Text(
                  'Login',
                  style: TextStyle(fontSize: 20.0),
                ),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white, // Button background color set to white
                textStyle: TextStyle(fontSize: 20.0, color: Color(0xFF5CD65C)), // Button text color set to green
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
              ),
            ),
            SizedBox(height: 20.0),
            GestureDetector(
              onTap: () {
                // Handle signup action here
              },
              child: Text(
                'Don\'t have an account? Sign up',
                style: TextStyle(fontSize: 16.0, color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

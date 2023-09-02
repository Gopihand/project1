
import 'package:flutter/material.dart';
import 'package:login/class.dart';
import 'package:login/faculty.dart';
import 'package:login/studentcreate.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DashboardScreen(),
    );
  }
}

class DashboardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () {
            // Handle the menu button action
          },
        ),
         actions: [
          IconButton(
            icon: Icon(Icons.logout),
            onPressed: () {
              // Handle the logout button action
            },
          ),
        ],
        // title: Text('Dashboard'),
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        color: Colors.grey[200], // Background color
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(height: 30,),
            Text('DashBoard' ,style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),),
            SizedBox(height: 30,),
            Container(
              color: Colors.white,
              width: 130,
              height: 130, // Customize the container width
              padding: EdgeInsets.only(top: 30,bottom: 30,left: 100,right: 50),
              
              child: TextButtonWithIcon(
                icon: Icons.school,
                text: 'Faculty',
                
                onPressed: () {
                  Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => FacultyCreatePage()),
                      );
                  // Handle the Faculty button action
                },
                
                textSize: 24, // Customize the text size
                textWeight: FontWeight.bold, // Customize the text weight
              ),
            ),
            SizedBox(height: 20),
            Container(
              color: Colors.white,
              width: 200,
              height: 130, // Customize the container width
              padding: EdgeInsets.only(top: 30,bottom: 30,left: 100,right: 50),
              child: TextButtonWithIcon(
                icon: Icons.person,
                text: 'Student',
                onPressed: () {
                  Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => StudentCreatePage()),
                      );
                  // Handle the Student button action
                },
                textSize: 24, // Customize the text size
                textWeight: FontWeight.bold, // Customize the text weight
              ),
            ),
            SizedBox(height: 20),
            Container(
              height: 130,
              color: Colors.white,
              padding: EdgeInsets.only(top: 30,bottom: 30,left: 100,right: 50),
              child: TextButtonWithIcon(
                icon: Icons.category,
                text: 'Section',
                onPressed: () {
                  Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => CreatePage()),
                      );
                  // Handle the Section button action
                },
                textSize: 24, // Customize the text size
                textWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),
            Container(
              height: 130,
              color: Colors.white,
              padding: EdgeInsets.only(top: 30,bottom: 30,left: 100,right: 50),
              child: TextButtonWithIcon(
                icon: Icons.event,
            
                text: 'Attendies',
                onPressed: () {
                  // Handle the Attendies button action
                },
                textSize: 24, // Customize the text size
                textWeight: FontWeight.bold,
                
              ),
            ),// Add more containers for other buttons
          ],
        ),
      ),
    );
  }
}

class TextButtonWithIcon extends StatelessWidget {
  final IconData icon;
  final String text;
  final VoidCallback onPressed;
  final double textSize;
  final FontWeight textWeight;

  const TextButtonWithIcon({
    required this.icon,
    required this.text,
    required this.onPressed,
    this.textSize = 16, // Default text size
    this.textWeight = FontWeight.normal, // Default text weight
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: Row(
        children: [
          Icon(icon),
          SizedBox(width: 20),
          Text(
            text,
            style: TextStyle(
              fontSize: textSize,
              fontWeight: textWeight,
            ),
          ),
        ],
      ),
    );
  }
}

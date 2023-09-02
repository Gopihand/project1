import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: FacultyCreatePage(),
    );
  }
}

class FacultyCreatePage extends StatefulWidget {
  @override
  _FacultyCreatePageState createState() => _FacultyCreatePageState();
}

class _FacultyCreatePageState extends State<FacultyCreatePage> {
  bool isMenuOpen = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(color: Colors.white),
          ),
          Center(
            child: Container(
              height: 700,
              padding: EdgeInsets.all(15.0),
              decoration: BoxDecoration(
                color: Colors.white70,
                borderRadius: BorderRadius.circular(30),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Image.asset(
                    'assets/facutly11.png',
                    width: 100,
                    height: 200,
                  ),

                  Text(
                    'Create Faculty',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 20),
                  _buildTextFieldWithIcon(Icons.person, 'Name'),
                  SizedBox(height: 20),
                  _buildTextFieldWithIcon(Icons.email, 'Email'),
                  SizedBox(height: 20),
                  _buildTextFieldWithIcon(Icons.phone, 'Phone Number'),
                  SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {
                      // Action when Add button is pressed
                    },
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.symmetric(vertical: 5, horizontal: 15),
                      primary: Colors.orange[900], // Orange color
                      onPrimary: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: Text(
                      'Add',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w300,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 20,
            right: 20,
            child: GestureDetector(
              onTap: () {
                setState(() {
                  isMenuOpen = !isMenuOpen;
                });
              },
              child: Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.orange[900],
                  borderRadius: BorderRadius.circular(25),
                ),
                child: Icon(
                  Icons.add,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          if (isMenuOpen)
            Positioned(
              bottom: 80,
              right: 20,
              child: Container(
                width: 150,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    _buildMenuItem(Icons.remove_red_eye, 'View'),
                    _buildMenuItem(Icons.create, 'Create'),
                    _buildMenuItem(Icons.cloud_upload, 'Upload'),
                  ],
                ),
              ),
            ),
        ],
      ),
    );
  }

  Widget _buildTextFieldWithIcon(IconData icon, String labelText) {
    return TextFormField(
      decoration: InputDecoration(
        labelText: labelText,
        prefixIcon: Icon(icon),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(40),
        ),
      ),
    );
  }

  Widget _buildMenuItem(IconData icon, String text) {
    return ListTile(
      leading: Icon(icon),
      title: Text(text),
      onTap: () {
        // Action when menu item is tapped
      },
    );
  }
}
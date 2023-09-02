import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: StudentCreatePage(),
    );
  }
}

class StudentCreatePage extends StatefulWidget {
  @override
  _StudentCreatePageState createState() => _StudentCreatePageState();
}

class _StudentCreatePageState extends State<StudentCreatePage> {
  bool isMenuOpen = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
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
                    'assets/create1.png',
                    width: 100,
                    height: 200,
                  ),
                  SizedBox(height: 20,),
                  Text(
                    'Create Student',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 30),
                  _buildTextFieldWithIcon(Icons.person, 'Name'),
                  SizedBox(height: 20),
                  _buildTextFieldWithIcon(Icons.email, 'Email'),
                  SizedBox(height: 20),
                  _buildTextFieldWithIcon(Icons.phone, 'Phone Number'),
                  SizedBox(height: 20),
                  _buildTextFieldWithIcon(Icons.phone, 'Roll Number'),
                  SizedBox(height: 20),
                 TextButton(
                    onPressed: () {
                     
                    },
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.symmetric(vertical: 5,horizontal: 5),
                    
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    
                      
                    ),
                     child: Container(
                      height: 50,
                      width: 130,
                      padding: EdgeInsets.only(left: 45,top: 15,),
                      
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(30),
      gradient: LinearGradient(
        colors: [
          Colors.deepOrange, // Starting color
          Colors.deepOrangeAccent,
          Colors.orange,
          
          // Colors.grey, // Ending color
        ],
        //  stops: [0.5, 0.3,0.2], 
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
      ),
    ),
                    
      child: Text(
        'Add',
      style: TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.w600,
      color: Colors.white,
      ),
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
                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                  color: Colors.orange[800],
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 3,
                      blurRadius: 7,
                      offset: Offset(0, 3),
                    ),
                  ],
                ),
                child: Icon(
                  Icons.add,
                  size: 32,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          if (isMenuOpen)
            Positioned(
              bottom: 90,
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
          borderRadius: BorderRadius.circular(30),
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
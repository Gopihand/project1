import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CreatePage(),
    );
  }
}

class CreatePage extends StatefulWidget {
  @override
  _CreatePageState createState() => _CreatePageState();
}

class _CreatePageState extends State<CreatePage> {
  bool isMenuOpen = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
             color: Colors.white
            ),
          ),
          Center(
            child: Container(
              height: 1000,
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Image.asset(
                    'assets/classcreate.png',
                    width: 200,
                    height: 200,
                  ),
                  SizedBox(height: 30,),
                  Text(
                    'Create Class',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 40),
                  _buildTextFieldWithIcon(Icons.person, 'Branch'),
                  SizedBox(height: 20),
                  _buildTextFieldWithIcon(Icons.date_range, 'Year'),
                  SizedBox(height: 20),
                  _buildTextFieldWithIcon(Icons.class_, 'Section'),
                  SizedBox(height: 20),
                  TextButton(
                    onPressed: () {
                      setState(() {
                        isMenuOpen = !isMenuOpen;
                      });
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
          Colors.orange, // Ending color
        ],
         stops: [0.0, 0.5, 1.0], 
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
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
             ), ],
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
      gradient: LinearGradient(
        colors: [
          Colors.deepOrange, // Starting color
          Colors.deepOrangeAccent,
          Colors.orange, // Ending color
        ],
         stops: [0.0, 0.5, 1.0], 
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
      ),
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
              bottom: 100,
              right: 20,
              child: Container(
                width: 170,
                decoration: BoxDecoration(
                  color:  Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    TextButton(onPressed: (){}, child: _buildMenuItem(Icons.remove_red_eye,'View'),),
                    
                    TextButton(onPressed: (){}, child: _buildMenuItem(Icons.create,'Create'),),
                    TextButton(onPressed: (){}, child: _buildMenuItem(Icons.cloud_upload,'Upload'),),
                    
                    
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
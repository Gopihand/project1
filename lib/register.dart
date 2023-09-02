import 'package:flutter/material.dart';
import 'package:login/admin.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _showSignIn = true;

  void _toggleScreen() {
    setState(() {
      _showSignIn = !_showSignIn;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(title: Text("Login and Sign Up")),
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/bgc1.png'),
                fit: BoxFit.cover,
              ),
            ),
            child: Opacity(
              opacity: 0.2,
              child: Container(color: Colors.black),
            ),
          ),
          Center(
            child: SingleChildScrollView(
              child: Container(
                margin: EdgeInsets.only(top: 140, left: 40, bottom: 120, right: 40),
                padding: EdgeInsets.all(30),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('WELCOME',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.grey[700]),),
                    SizedBox(height: 15,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            if (!_showSignIn) {
                              _toggleScreen();
                            }
                          },
                          child: Text('SIGN IN'),
                          style: ElevatedButton.styleFrom(
                            primary: Colors.orange[900],
                            onPrimary: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50),
                            ),
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            if (_showSignIn) {
                              _toggleScreen();
                            }
                          },
                          child: Text('SIGN UP'),
                          style: ElevatedButton.styleFrom(
                            primary: Colors.orange[800],
                            onPrimary: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    _showSignIn
                        ? SignInScreen(key: ValueKey<bool>(true))
                        : SignUpScreen(key: ValueKey<bool>(false)),
                    SizedBox(height: 20),
                    GoogleLoginButton(),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class SignInScreen extends StatelessWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      child: Column(
        children: [
          Text("Sign In Page"),
          TextField(decoration: InputDecoration(labelText: 'Username')),
          TextField(decoration: InputDecoration(labelText: 'Password')),
          SizedBox(height: 30),
          Container(
              width: 80,
              height: 35, // Adjust the width as needed
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.orange[900]!, Colors.orange[800]!, Colors.orange[400]!],
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                ),
                borderRadius: BorderRadius.circular(8),
              ),
              child: TextButton(
                onPressed: () {
                  Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => MyHomePage2()),
                      );
                  // // Handle the submit action here
                  // print('Selected Year: $selectedYear');
                  // print('Selected Branch: $selectedBranch');
                  // print('Selected Section: $selectedSection');
                  // print('Selected Subject: $selectedSubject');
                },
                style: TextButton.styleFrom(
                  primary: Colors.white, // Text color
                  minimumSize: Size(50, 10), // Adjust the size here
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8), // Button border radius
                  ),
                ),
                child: Text('Login'),
              ),
            ),
        ],
      ),
    );
  }
}

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      child: Column(
        children: [
          Text("Sign Up Page"),
          TextField(decoration: InputDecoration(labelText: 'Name')),
          TextField(decoration: InputDecoration(labelText: 'Email')),
          TextField(decoration: InputDecoration(labelText: 'Phone Number')),
          TextField(decoration: InputDecoration(labelText: 'Password')),
          SizedBox(height: 20,),
          Container(
              width: 80,
              height: 35, // Adjust the width as needed
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.orange[900]!, Colors.orange[800]!, Colors.orange[400]!],
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                ),
                borderRadius: BorderRadius.circular(8),
              ),
              child: TextButton(
                onPressed: () {
                  Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => MyHomePage2()),
                      );
                  // // Handle the submit action here
                  // print('Selected Year: $selectedYear');
                  // print('Selected Branch: $selectedBranch');
                  // print('Selected Section: $selectedSection');
                  // print('Selected Subject: $selectedSubject');
                },
                style: TextButton.styleFrom(
                  primary: Colors.white, // Text color
                  minimumSize: Size(50, 10), // Adjust the size here
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8), // Button border radius
                  ),
                ),
                child: Text('Submit'),
              ),
            ),
        ],
      ),
    );
  }
}

class GoogleLoginButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ElevatedButton.icon(
          onPressed: () {
            // Handle Google login
          },
          icon: Image.asset(
            'assets/google1.png',
            width: 24,
            height: 24,
          ),
          label: Text('Continue with Google', style: TextStyle(fontSize: 16)),
          style: ElevatedButton.styleFrom(
            primary: Colors.orange[800],
            onPrimary: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50),
            ),
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
            elevation: 0,
            side: BorderSide(
              color: Colors.orange[800]!,
              width: 2,
            ),
            textStyle: TextStyle(color: Colors.white),
          ),
        ),
        GestureDetector(
          onTap: () {
            // Handle the "Forgot Password" action
          },
          child: Padding(
            padding: EdgeInsets.only(top: 20,left: 100),
            child: Text(
              'Forgot Password?',
              style: TextStyle(
                color: Colors.blueGrey[700],
                decoration: TextDecoration.underline,
              ),
            ),
          ),
        ),
      ],
    );
  }
}


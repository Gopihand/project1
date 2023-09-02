import 'package:flutter/material.dart';
import 'package:login/details.dart';
import 'package:login/details2.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          gradient: LinearGradient(begin: Alignment.topCenter, colors: [
            Color.fromARGB(255, 16, 31, 171),
            Color.fromARGB(255, 21, 101, 192),
            Color.fromARGB(255, 66, 165, 245),
          ]),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              height: 25,
            ),
            const Padding(
              padding: EdgeInsets.all(20),
              child: Padding(
                padding: EdgeInsets.only(top: 2, bottom: 2),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    CircleAvatar(
                      radius: 60,
                      backgroundImage: AssetImage('assets/ss.png'),
                    ),
                    // Image.asset('assets/p1.png',height: 130,width: 120,),

                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Padding(padding: EdgeInsets.only(left: 100, top: 40)),
                        Text(
                          'Hello!',
                          style: TextStyle(
                              color: Color.fromARGB(255, 255, 255, 255),
                              fontSize: 25,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'Get Your details',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontWeight: FontWeight.normal),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 0,
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.blue[600],
                borderRadius: BorderRadius.circular(16),
              ),
              padding: EdgeInsets.all(20),
              child: Row(
                children: [
                  Icon(
                    Icons.search,
                    color: Colors.white,
                  ),
                  Text(
                    'search your friends details',
                    style: TextStyle(color: Colors.white),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Expanded(
                child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(5),
                    topRight: Radius.circular(50),
                    bottomLeft: Radius.circular(50),
                    bottomRight: Radius.circular(5)),
              ),
              child: Padding(
                padding: EdgeInsets.all(30),
                child: Column(
                  children: [
                    SizedBox(
                      height: 30,
                    ),
                    Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(padding: EdgeInsets.all(25)),
                          ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => UserDetailsPage()),
                              );
                            },
                            style: TextButton.styleFrom(
                              backgroundColor: Colors.white,
                              primary: Colors.white,
                              minimumSize: Size(90, 30),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8),
                              ),
                            ),
                            child: Text(
                              'Daily Attendence',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 27,
                                  color: Colors.black),
                            ),
                          ),
                          // Text('Daily Attendance',style: TextStyle(color: Colors.black,fontSize: 27,fontWeight: FontWeight.normal),textAlign: TextAlign.center,),
                        ],
                      ),
                      height: 180,
                      width: 350,
                      padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                                color: Color.fromRGBO(66, 135, 245, .3),
                                blurRadius: 20,
                                offset: Offset(0, 10))
                          ]),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(padding: EdgeInsets.all(25)),
                          ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => UserDetailsPage1()),
                              );
                            },
                            style: TextButton.styleFrom(
                              backgroundColor: Colors.white,
                              primary: Colors.white,
                              minimumSize: Size(90, 30),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8),
                              ),
                            ),
                            child: Text(
                              'Monthly Attendence',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 27,
                                  color: Colors.black),
                            ),
                          ),

                          // Text('Monthly Attendance',style: TextStyle(color: Colors.black,fontSize: 27,fontWeight: FontWeight.normal),textAlign: TextAlign.center,),
                        ],
                      ),
                      height: 180,
                      width: 350,
                      padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                                color: Color.fromRGBO(66, 135, 245, .3),
                                blurRadius: 20,
                                offset: Offset(0, 10))
                          ]),
                    ),
                  ],
                ),
              ),
            ))
          ],
        ),
      ),
    );
  }
}

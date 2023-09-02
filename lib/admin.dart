import 'package:flutter/material.dart';
import 'package:login/last.dart';

void main() {
  runApp(MyApp());
}

class MyApp1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dropdown Form',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage2(),
    );
  }
}

class MyHomePage2 extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage2> {
  String? selectedYear;
  String? selectedBranch;
  String? selectedSection;
  String? selectedSubject;

  List<String> years = ['First Year', 'Second Year', 'Third Year', 'Fourth Year'];
  List<String> branches = ['CSE', 'ECE', 'CSD', 'IT','AI&ML','CIVIL'];
  List<String> sections = ['Section A', 'Section B', 'Section C'];
  List<String> subjects = ['CD', 'BE', 'SE', 'OS','ML'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(top: 150, left: 20, bottom: 50, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ShaderMask(
              shaderCallback: (bounds) {
                return LinearGradient(
                  colors: [Colors.orange[900]!, Colors.orange[800]!, Colors.orange[400]!],
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                ).createShader(bounds);
              },
              child: Text(
                'WELCOME',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  shadows: [
                    Shadow(
                      color: Colors.orange[800]!,
                      blurRadius: 2.0,
                      offset: Offset(1, 1),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Choose Your Class',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.orange[400],
                shadows: [
                  Shadow(
                    color: Colors.orange[800]!,
                    blurRadius: 2.0,
                    offset: Offset(1, 1),
                  ),
                ],
              ),
            ),
            SizedBox(height: 26),
            buildDropdownContainer(
              hint: 'Select Year',
              selectedValue: selectedYear,
              items: years,
              onChanged: (newValue) {
                setState(() {
                  selectedYear = newValue;
                });
              },
            ),
            SizedBox(height: 26),
            buildDropdownContainer(
              hint: 'Select Branch',
              selectedValue: selectedBranch,
              items: branches,
              onChanged: (newValue) {
                setState(() {
                  selectedBranch = newValue;
                });
              },
            ),
            SizedBox(height: 26),
            buildDropdownContainer(
              hint: 'Select Section',
              selectedValue: selectedSection,
              items: sections,
              onChanged: (newValue) {
                setState(() {
                  selectedSection = newValue;
                });
              },
            ),
            SizedBox(height: 26),
            buildDropdownContainer(
              hint: 'Select Subject',
              selectedValue: selectedSubject,
              items: subjects,
              onChanged: (newValue) {
                setState(() {
                  selectedSubject = newValue;
                });
              },
            ),
            SizedBox(height: 36),
            Container(
              width: 50,
              height: 40,
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
                        MaterialPageRoute(builder: (context) => MyApp()),
                      );
                  // Handle the submit action here
                  // print('Selected Year: $selectedYear');
                  // print('Selected Branch: $selectedBranch');
                  // print('Selected Section: $selectedSection');
                  // print('Selected Subject: $selectedSubject');
                },
                style: TextButton.styleFrom(
                  primary: Colors.white,
                  minimumSize: Size(80, 30),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                child: Text('Submit', style: TextStyle(fontSize: 14)),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildDropdownContainer({
    required String hint,
    required String? selectedValue,
    required List<String> items,
    required Function(String?) onChanged,
  }) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            spreadRadius: 2,
            blurRadius: 5,
            offset: Offset(0, 3),
          ),
        ],
      ),
      padding: EdgeInsets.only(top: 5, left: 10, bottom: 5, right: 15),
      margin: EdgeInsets.symmetric(vertical: 8),
      child: DropdownButton<String>(
        underline: SizedBox.shrink(),
        isExpanded: true,
        value: selectedValue,
        onChanged: onChanged,
        items: items.map<DropdownMenuItem<String>>((String item) {
          return DropdownMenuItem<String>(
            value: item,
            child: Text(item),
          );
        }).toList(),
        hint: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: Text(
            hint,
            style: TextStyle(color: Colors.grey),
          ),
        ),
      ),
    );
  }
}

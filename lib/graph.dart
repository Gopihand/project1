import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:login/main.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        // appBar: AppBar(
        //   title: Text('Attendance Pie Chart'),
        // ),
        body: AttendanceChart(),
      ),
    );
  }
}

class AttendanceChart extends StatelessWidget {
  final List<PieChartSectionData> _sections = [
    PieChartSectionData(
      value: 10,
      title: 'Total\n10',
      color: Colors.blue,
    ),
    PieChartSectionData(
      value: 7,
      title: 'Present\n7',
      color: Colors.green,
    ),
    PieChartSectionData(
      value: 2,
      title: 'Absent\n2',
      color: Colors.red,
    ),
    PieChartSectionData(
      value: 1,
      title: 'Permission\n1',
      color: Colors.orange,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/bgc1.png'),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          AspectRatio(
            aspectRatio: 2.5,
            child: PieChart(
              PieChartData(
                sections: _sections,
                centerSpaceRadius: 80,
                sectionsSpace: 0,
              ),
            ),
          ),
          SizedBox(height: 40),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                DataTable(
                  columns: const <DataColumn>[
                    DataColumn(label: Text('Attribute', style: TextStyle(color: Colors.white))),
                    DataColumn(label: Text('Count', style: TextStyle(color: Colors.white))),
                  ],
                  rows: <DataRow>[
                    DataRow(cells: <DataCell>[
                      DataCell(Text('Total', style: TextStyle(color: Colors.white))),
                      DataCell(Text('10', style: TextStyle(color: Colors.white))),
                    ]),
                    DataRow(cells: <DataCell>[
                      DataCell(Text('Present', style: TextStyle(color: Colors.white))),
                      DataCell(Text('7', style: TextStyle(color: Colors.white))),
                    ]),
                    DataRow(cells: <DataCell>[
                      DataCell(Text('Absent', style: TextStyle(color: Colors.white))),
                      DataCell(Text('2', style: TextStyle(color: Colors.white))),
                    ]),
                    DataRow(cells: <DataCell>[
                      DataCell(Text('Permission', style: TextStyle(color: Colors.white))),
                      DataCell(Text('1', style: TextStyle(color: Colors.white))),
                    ]),
                  ],
                ),
                SizedBox(height: 20), // Adjust the height as needed.
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => MyHomePage()),
                      );
                    // Add your button's functionality here.
                  },
                  child: Text('HOME'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

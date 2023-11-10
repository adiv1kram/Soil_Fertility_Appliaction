import 'package:flutter/material.dart';
import 'package:soil_analysis/screens/mapscreen.dart';
import 'package:soil_analysis/screens/statsscreen.dart';

class statpagescreen extends StatefulWidget {
  const statpagescreen({super.key});
  State<statpagescreen> createState() => _statpagescreen();
}

// ignore: camel_case_types
class _statpagescreen extends State<statpagescreen> {
  int myIndex = 0;
  final List<Widget> _children = [
    MapScreen(),
    StatScreen(),
  ];
  void onTabTapped(int index) {
    setState(() {
      myIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(235, 25, 131, 237),
        title: const Text(
          'Sensor Information',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
        ),
      ),
      body: _children[myIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: myIndex,
        onTap: onTabTapped,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.map), label: 'Map'),
          BottomNavigationBarItem(
              icon: Icon(Icons.table_chart), label: 'Stats'),
        ],
      ),
    );
  }
}

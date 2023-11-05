import 'package:flutter/material.dart';
import 'package:soil_analysis/screens/mapscreen.dart';

class FirstPageScreen extends StatefulWidget {
  const FirstPageScreen({super.key});
  State<FirstPageScreen> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPageScreen> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Map',
      style: optionStyle,
    ),
    Text(
      '  Optimal plants ',
      style: optionStyle,
    ),
    Text(
      '  Nutrients present',
      style: optionStyle,
    ),
    Text(
      '  ph of the soil',
      style: optionStyle,
    ),
    Text(
      ' Moisture of the soil',
      style: optionStyle,
    )
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF7F2F0F5),
      appBar: AppBar(
        title: const Text('Some random name'),
        backgroundColor: Colors.lightGreenAccent,
        toolbarHeight: 50,
      ),
      body: Center(
        child: _widgetOptions[_selectedIndex],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Color.fromARGB(159, 96, 233, 105),
                    Color.fromARGB(167, 95, 223, 101),
                    Color.fromARGB(159, 79, 223, 230)
                  ],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
              ),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Details",
                  style: TextStyle(
                    color: Colors.black,
                    fontFamily: 'Inter',
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            ListTile(
              title: const Text('Map'),
              selected: _selectedIndex == 0,
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: ((context) => MapScreen())));
              },
            ),
            ListTile(
              title: const Text('Optimal plants'),
              selected: _selectedIndex == 1,
              onTap: () {
                _onItemTapped(1);
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Nutrients present'),
              selected: _selectedIndex == 2,
              onTap: () {
                _onItemTapped(2);
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('ph of the soil'),
              selected: _selectedIndex == 3,
              onTap: () {
                _onItemTapped(3);
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Moisture of the soil'),
              selected: _selectedIndex == 4,
              onTap: () {
                _onItemTapped(4);
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}

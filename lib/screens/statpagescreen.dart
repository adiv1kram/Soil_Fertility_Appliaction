import 'package:flutter/material.dart';

class statpagescreen extends StatefulWidget {
  const statpagescreen({super.key});
  State<statpagescreen> createState() => _statpagescreen();
}

class _statpagescreen extends State<statpagescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(236, 237, 32, 25),
        title: const Text(
          "Stat Page",
          style: TextStyle(
            decorationColor: Color.fromARGB(236, 237, 32, 25),
            color: Color.fromARGB(235, 220, 213, 212),
            fontSize: 30,
            fontWeight: FontWeight.w500,
            fontFamily: 'Montserrat-Medium.ttf',
          ),
        ),
        toolbarHeight: 100,
      ),
      body: Container(),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.map),
            backgroundColor: Color.fromARGB(236, 237, 32, 25),
          ),
        ],
      ),
    );
  }
}

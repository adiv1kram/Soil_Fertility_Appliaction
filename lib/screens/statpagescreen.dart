import 'package:flutter/material.dart';

class statpagescreen extends StatefulWidget {
  const statpagescreen({super.key});
  State<statpagescreen> createState() => _statpagescreen();
}

// ignore: camel_case_types
class _statpagescreen extends State<statpagescreen> {
  int myIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(235, 25, 131, 237),
        title: const Text(
          'Stat Page',
          style: TextStyle(fontSize: 32, fontWeight: FontWeight.w600),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            if (myIndex == 0)
              // you can call custom widget here
              const Column(
                children: [
                  Text("0"),
                ],
              )
            else if (myIndex == 1)
              const Column(
                children: [
                  Text("1"),
                ],
              ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) {
          setState(() {
            myIndex = index;
          });
        },
        currentIndex: myIndex,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.map),
            label: 'Map',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'home',
          )
        ],
      ),
    );
  }
}

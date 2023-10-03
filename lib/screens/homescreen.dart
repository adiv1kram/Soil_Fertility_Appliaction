import 'package:flutter/material.dart';

class homescreeen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Scaffold(
          body: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [
          Color.fromARGB(159, 96, 233, 105),
          Color.fromARGB(167, 95, 223, 101),
          Color.fromARGB(159, 79, 223, 230)
        ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
        child: Column(
          children: [
            const SizedBox(
              height: 56,
            ),
            Image.asset(
              'assets/images/famer.png',
              scale: 1,
            ),
            const SizedBox(
              height: 250,
            ),
            ElevatedButton.icon(onPressed: () {}, icon: const Icon(Icons.arrow_right), 
             style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      backgroundColor: const Color.fromARGB(255, 5, 43, 48),
                      fixedSize: const Size(350, 30),
                      foregroundColor: Colors.white),
            label:const Text('get started',
            style:TextStyle(
              color: Color.fromARGB(255, 255, 251, 251),
              fontWeight: FontWeight.bold,
            ), 
            ) )
          ],
        ),
      )),
    );
  }
}

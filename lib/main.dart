import 'package:flutter/material.dart';

import 'createaccount.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 213, 147, 169),
      body: Container(
        child: Stack(children: [
          Image.asset('images/all.png',
              fit: BoxFit.cover, height: 700, width: 500),
          Padding(padding: const EdgeInsets.all(2000)),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Center(
                  child: TextButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Color.fromARGB(255, 223, 130, 161),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(80))),
                    onPressed: () {
                      Navigator.pushReplacement(context,
                          MaterialPageRoute(builder: (context) => create()));
                    },
                    child: const Text(
                      'shoop sweets',
                      style: TextStyle(
                          color: Color.fromARGB(255, 243, 235, 237),
                          fontSize: 30),
                    ),
                  ),
                ),
              ),
            ],
          )
        ]),
      ),
    );
  }
}

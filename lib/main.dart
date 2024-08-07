import 'package:flutter/material.dart';
import 'package:sweet_store/core/extensions/context_extensions.dart';

import 'features/auth/presentation/pages/createaccount.dart';

void main() {
  runApp(const MaterialApp(home: MainApp()));
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
      backgroundColor: const Color.fromARGB(255, 213, 147, 169),
      body: Container(
        child: Stack(children: [
          Image.asset('image/all.png',
              fit: BoxFit.cover, height: context.height(), width: 500),
          const Padding(padding: EdgeInsets.all(2000)),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Center(
                child: Center(
                  child: TextButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor:
                            const Color.fromARGB(255, 223, 130, 161),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(80))),
                    onPressed: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const create()));
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
              const SizedBox(
                height: 50,
              )
            ],
          )
        ]),
      ),
    );
  }
}

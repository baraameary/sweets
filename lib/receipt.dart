import 'package:flutter/material.dart';
import 'package:sweet_store/task.dart';

class receipt extends StatefulWidget {
  const receipt({super.key});

  @override
  State<receipt> createState() => _receiptState();
}

class _receiptState extends State<receipt> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Receipt Method'),
        backgroundColor: Colors.pink[400],
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 25, left: 25, right: 25),
            child: Container(
              height: 250,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.pink[200],
                  borderRadius: BorderRadius.circular(16)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(''),
                  Image.asset(
                    'image/photo_2024-06-22_10-28-20.jpg',
                    height: 200,
                    width: 200,
                  ),
                ],
              ),
            ),
          ),
          Container(
            height: 250,
            width: double.infinity,
            margin: EdgeInsets.all(15),
            padding: EdgeInsets.all(15),
            color: Colors.white,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Receipt Method',
                    ),
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
                  width: double.infinity,
                  height: 180,
                  padding: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                            blurRadius: 15,
                            offset: Offset(3, 3),
                            spreadRadius: -10)
                      ]),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      task(
                        value: true,
                        text: 'Delivery',
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      task(
                        value: false,
                        text: 'Personaly',
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 80,
          ),
          Container(
              margin: EdgeInsets.all(16),
              height: 60,
              width: 300,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.pink[200],
                  foregroundColor: Colors.black,
                ),
                onPressed: () {},
                child: Text(
                  
                  'Continue',
                  style: TextStyle(fontSize: 24),
                ),
              ))
        ],
      ),
    );
  }
}

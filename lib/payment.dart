import 'package:flutter/material.dart';
import 'package:sweet_store/receipt.dart';
import 'package:sweet_store/task.dart';

class checkOut extends StatefulWidget {
  const checkOut({super.key});

  @override
  State<checkOut> createState() => _checkOutState();
}

class _checkOutState extends State<checkOut> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Payment Method'),
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
                    'image/photo_2024-06-22_10-28-25.jpg',
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
                      'Payment Method',
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
                      task(
                        value: true,
                        text: 'Cash',
                      ),
                      task(
                        value: false,
                        text: 'Cridet Cart',
                      ),
                      task(
                        value: false,
                        text: 'Digital Wallet',
                      )
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
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => receipt()));
                },
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

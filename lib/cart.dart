import 'package:flutter/material.dart';
import 'package:sweet_store/payment.dart';
import 'package:sweet_store/product.dart';

class cart extends StatelessWidget {
  cart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Your cart')),
        backgroundColor: Colors.pink[400],
      ),
      body: Column(
        children: [
          SizedBox(
            height: 60,
          ),
          Container(
            margin: EdgeInsets.all(10),
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              color: Colors.pink[200],
            ),
            height: 150,
            width: 400,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset(
                  'image/Rectangle 9.png',
                  height: 100,
                  width: 150,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Donuts'),
                    SizedBox(
                      height: 5,
                    ),
                    Text('2000\$'),
                  ],
                ),
                Container(
                    alignment: Alignment.center,
                    child: ValueListenableBuilder(
                        valueListenable: Global.x1,
                        builder: (context, value, child) {
                          return Center(
                            child: Text(
                              '$value Spaces',
                              style: TextStyle(fontSize: 24),
                            ),
                          );
                        })),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Divider(
            color: Colors.pink[200],
            thickness: 5,
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                'Total',
                style: TextStyle(fontSize: 24),
              ),
              Container(
                decoration: BoxDecoration(
                    color: Colors.pink[200],
                    borderRadius: BorderRadius.circular(16)),
                height: 30,
                width: 80,
                child: Center(child: Text('2000\$')),
              )
            ],
          ),
          SizedBox(
            height: 300,
          ),
          Container(
              margin: EdgeInsets.all(16),
              height: 60,
              width: 300,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.pink[200],
                    foregroundColor: Colors.black),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => checkOut()));
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                        child: ValueListenableBuilder(
                            valueListenable: Global.x1,
                            builder: (context, value, child) {
                              return Center(
                                child: Text(
                                  '$value Items',
                                  style: TextStyle(fontSize: 16),
                                ),
                              );
                            })),
                    Text(
                      'Continue',
                      style: TextStyle(fontSize: 24),
                    ),
                  ],
                ),
              ))
        ],
      ),
    );
  }
}

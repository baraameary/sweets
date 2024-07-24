import 'package:flutter/material.dart';
import 'package:sweet_store/arabic_sweet.dart';
import 'package:sweet_store/category.dart';
import 'package:sweet_store/ice_cream.dart';
import 'package:sweet_store/juice.dart';

import 'package:sweet_store/western_sweets.dart';

class bransh extends StatelessWidget {
  const bransh({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('The Store Branches')),
        backgroundColor: Colors.pink[400],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              categor(
                color: Colors.pink[200],
                photo: ('image/photo_2024-06-19_01-57-53.jpg'),
                paid: 'Western Sweets',
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => westernSweets()));
                },
              ),
              categor(
                color: Colors.yellow[200],
                photo: ('image/photo_2024-06-19_01-58-45.jpg'),
                paid: 'Arabic Sweets',
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => arabicSweet()));
                },
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              categor(
                color: Colors.green[200],
                photo: ('image/photo_2024-06-19_02-00-20.jpg'),
                paid: ' world of ice',
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => iceCream()));
                },
              ),
              categor(
                color: Colors.blue[200],
                photo: ('image/th.png'),
                paid: 'Juice World',
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => juice()));
                },
              )
            ],
          )
        ],
      ),
    );
  }
}

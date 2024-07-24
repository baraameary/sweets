import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:sweet_store/category.dart';

import 'package:sweet_store/product.dart';

class westernSweets extends StatelessWidget {
  const westernSweets({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Western Sweets')),
        backgroundColor: Colors.pink[400],
      ),
      body: Container(
        margin: EdgeInsets.only(top: 16),
        child: SingleChildScrollView(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  height: 20,
                ),
                categor(
                  color: Colors.pink[200],
                  photo: ('image/Rectangle 9.png'),
                  paid: 'Cupcakes',
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => product()));
                  },
                ),
                SizedBox(
                  height: 20,
                ),
                categor(
                  color: Colors.yellow[200],
                  photo: ('image/Rectangle 8.png'),
                  paid: 'Ice Cream',
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => product()));
                  },
                )
              ],
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                categor(
                  color: Colors.green[200],
                  photo: ('image/Rectangle 7.png'),
                  paid: 'Chees Cake',
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => product()));
                  },
                ),
                categor(
                  color: Colors.blue[200],
                  photo: ('image/Rectangle 9.png'),
                  paid: 'Donuts',
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => product()));
                  },
                )
              ],
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                categor(
                  color: Colors.red[200],
                  photo: ('image/Rectangle 9.png'),
                  paid: 'Donuts',
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => product()));
                  },
                ),
                categor(
                  color: Colors.pink[200],
                  photo: ('image/Rectangle 9.png'),
                  paid: 'Donuts',
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => product()));
                  },
                )
              ],
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                categor(
                  color: Colors.yellow[200],
                  photo: ('image/Rectangle 9.png'),
                  paid: 'Donuts',
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => product()));
                  },
                ),
                categor(
                  color: Colors.green[200],
                  photo: ('image/Rectangle 9.png'),
                  paid: 'Donuts',
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => product()));
                  },
                )
              ],
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                categor(
                  color: Colors.blue[200],
                  photo: ('image/Rectangle 9.png'),
                  paid: 'Donuts',
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => product()));
                  },
                ),
                categor(
                  color: Colors.red[200],
                  photo: ('image/Rectangle 9.png'),
                  paid: 'Donuts',
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => product()));
                  },
                )
              ],
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                categor(
                  color: Colors.pink[200],
                  photo: ('image/Rectangle 9.png'),
                  paid: 'Donuts',
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => product()));
                  },
                ),
                categor(
                  color: Colors.yellow[200],
                  photo: ('image/Rectangle 9.png'),
                  paid: 'Donuts',
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => product()));
                  },
                )
              ],
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                categor(
                  color: Colors.green[200],
                  photo: ('image/Rectangle 9.png'),
                  paid: 'Donuts',
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => product()));
                  },
                ),
                categor(
                  color: Colors.blue[200],
                  photo: ('image/Rectangle 9.png'),
                  paid: 'Donuts',
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => product()));
                  },
                )
              ],
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                categor(
                  color: Colors.red[200],
                  photo: ('image/Rectangle 9.png'),
                  paid: 'Donuts',
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => product()));
                  },
                ),
                SizedBox(height: 20),
                categor(
                  color: Colors.pink[200],
                  photo: ('image/Rectangle 9.png'),
                  paid: 'Donuts',
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => product()));
                  },
                )
              ],
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                categor(
                  color: Colors.yellow[200],
                  photo: ('image/Rectangle 9.png'),
                  paid: 'Donuts',
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => product()));
                  },
                ),
                SizedBox(height: 20),
                categor(
                  color: Colors.green[200],
                  photo: ('image/Rectangle 9.png'),
                  paid: 'Donuts',
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => product()));
                  },
                )
              ],
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                categor(
                  color: Colors.blue[200],
                  photo: ('image/Rectangle 9.png'),
                  paid: 'Donuts',
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => product()));
                  },
                ),
                categor(
                  color: Colors.red[200],
                  photo: ('image/Rectangle 9.png'),
                  paid: 'Donuts',
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => product()));
                  },
                )
              ],
            ),
          ]),
        ),
      ),
    );
  }
}

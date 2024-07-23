import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'package:project4/evaluation.dart';

final s=GlobalKey<FormState>();
final TextEditingController emailcontroller = TextEditingController();
final TextEditingController namecontroller = TextEditingController();
final TextEditingController phonecontroller = TextEditingController();
final TextEditingController address = TextEditingController();
final TextEditingController passwordcontroller = TextEditingController();
String _value = 'aleppo';
var _item = ['aleppo' ,'hama', 'tartous', 'homs', 'latakia'];

class create extends StatefulWidget {
  create({super.key});

  @override
  State<create> createState() => _createState();
}

class _createState extends State<create> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stack(
          children: [
            Center(
              child: Image.asset(
                'images/1000_F_264341487_Jw5dBe1W7pJkf1HJOkks60G65x2cglsq.jpg',
                fit: BoxFit.cover,
                height: 900,
                width: 500,
              ),
            ),
            Container(
              padding: EdgeInsets.all(50),
              margin: EdgeInsets.all(50),
              child: Center(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      TextFormField(
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        validator: (text) {
                          if (text != null && text.length <= 10) {
                            return null;
                          } else {
                            return 'add name';
                          }
                        },
                        controller: namecontroller,
                        cursorColor: Colors.pink,
                        cursorHeight: 30,
                        cursorWidth: 1,
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(30))),
                          focusedErrorBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.pink,
                            ),
                          ),
                          errorBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.pink,
                              ),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(30))),
                          labelText: 'user name',
                        ),
                      ),
                      TextFormField(
                        validator: (Text) {
                          if (Text != null && Text.length <= 5) {
                            return null;
                          } else {
                            return 'add password';
                          }
                        },
                        obscureText: true,
                        obscuringCharacter: '*',
                        controller: passwordcontroller,
                        cursorColor: Colors.pink,
                        cursorHeight: 30,
                        cursorWidth: 1,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(30))),
                          labelText: ' enter the password',
                        ),
                      ),
                      TextFormField(
                        validator: (Text) {
                          if (Text != null && Text == '        .gmail.com') {
                            return null;
                          } else {
                            return 'add email';
                          }
                        },
                        controller: emailcontroller,
                        cursorColor: Colors.pink,
                        cursorHeight: 30,
                        cursorWidth: 1,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(30))),
                          labelText: 'yor_email',
                        ),
                      ),
                      TextFormField(
                        controller: phonecontroller,
                        cursorColor: Colors.pink,
                        cursorHeight: 30,
                        cursorWidth: 1,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(30))),
                          labelText: 'your phone',
                        ),
                      ),
                      Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(margin: EdgeInsets.all(10),
                              height: 40,
                              width: 450,
                              decoration: BoxDecoration(
                                  color:  Color.fromARGB(255, 216, 160, 179),
                                  borderRadius: BorderRadius.circular(30)),
                              child: Center(
                                child: DropdownButton(
                                  items: _item.map((String Item) {
                                    return DropdownMenuItem(
                                        value: Item, child: Text(Item));
                                  }).toList(),
                                  onChanged: (String? newvalue) {
                                    setState(() {
                                      _value = newvalue!;
                                    });
                                  },
                                  value: _value,
                                  borderRadius: BorderRadius.circular(10),
                                  icon: const Icon(Icons.keyboard_arrow_down,
                                      size: 30),
                                  style: TextStyle(
                                      fontSize: 20, color: Colors.black),
                                  underline: Container(),
                                ),
                              ),
                            ),
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  backgroundColor:
                                      Color.fromARGB(255, 216, 160, 179),
                                  shape: RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(100))),
                              onPressed: () {
                                Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Evaluation()));
                              },
                              child: Text(
                                'create',
                                style: TextStyle(
                                    color: Colors.black, fontSize: 20),
                              ),
                            ),
                          ]),
                    ]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

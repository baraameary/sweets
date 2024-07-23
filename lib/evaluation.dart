import 'package:flutter/material.dart';

class Evaluation extends StatefulWidget {
  const Evaluation({super.key});

  @override
  State<Evaluation> createState() => _EvaluationState();
}

class _EvaluationState extends State<Evaluation> {
  // Global keys and controllers
  final formKey = GlobalKey<FormState>();
  final TextEditingController noteController = TextEditingController();
  String _smile = '😢';
  String _value = '😢';
  var _item = ['😢', '😒', '😊', '❤️', '😍 '];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(
          255, 233, 228, 230), // Background color of the scaffold
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 216, 160, 179), // AppBar color
        title: Center(
          child: Text(
            'evaluation!?',
            style: TextStyle(
              color: const Color.fromARGB(255, 246, 244, 244),
              fontSize: 20,
            ),
          ),
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        margin: EdgeInsets.all(30),
        alignment: Alignment.centerLeft,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            // First row with image and dropdown
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset(
                    'images/food.jpg',
                    height: 100,
                    width: 100,
                  ),
                  Container(
                    margin: const EdgeInsets.all(10),
                    height: 40,
                    width: 100,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 216, 160, 179),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Center(
                      child: DropdownButton(
                        items: _item.map((String item) {
                          return DropdownMenuItem(
                              value: item, child: Text(item));
                        }).toList(),
                        onChanged: (String? newValue) {
                          setState(() {
                            _value = newValue!;
                          });
                        },
                        value: _value,
                        borderRadius: BorderRadius.circular(10),
                        icon: const Icon(
                          Icons.keyboard_arrow_down,
                          size: 30,
                          color: Colors.black,
                        ),
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                        ),
                        underline: Container(), // Remove underline
                      ),
                    ),
                  ),
                ],
              ),
            ),
            // Second row with image and dropdown
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset(
                    'images/images.jpeg',
                    height: 100,
                    width: 100,
                  ),
                  Container(
                    margin: EdgeInsets.all(10),
                    height: 40,
                    width: 100,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 216, 160, 179),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Center(
                      child: DropdownButton(
                        items: _item.map((String item) {
                          return DropdownMenuItem(
                              value: item, child: Text(item));
                        }).toList(),
                        onChanged: (String? newValue) {
                          setState(() {
                            _smile = newValue!;
                          });
                        },
                        value: _smile,
                        borderRadius: BorderRadius.circular(10),
                        icon: const Icon(
                          Icons.keyboard_arrow_down,
                          size: 30,
                          color: Colors.black,
                        ),
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                        ),
                        underline: Container(), // Remove underline
                      ),
                    ),
                  ),
                ],
              ),
            ),
            // Third row with image and form
            Container( padding: EdgeInsets.only(left: 35),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset(
                    'images/rr.png',
                    height: 150,
                    width: 90,
                  ),
                  Container(
                    height: 50,
                    width: 180,
                    child: Form(
                      key: formKey,
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      child: TextFormField(
                        validator: (text) {
                          if (text != null && text.length <= 400) {
                            return null;
                          } else {
                            return 'add your note';
                          }
                        },
                        controller: noteController,
                        maxLines: 5,
                        decoration: InputDecoration(
                          labelText: 'enter your note',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

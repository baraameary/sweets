import 'package:flutter/material.dart';

class task extends StatelessWidget {
  task({super.key, this.text, this.value});
  String? text;
  bool? value;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
            activeColor: Colors.pink[200],
            value: value!,
            onChanged: (value) {}),
        Text(text!),
      ],
    );
  }
}

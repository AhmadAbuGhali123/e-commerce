import 'package:flutter/material.dart';

class Textformfield extends StatelessWidget {

  const Textformfield({super.key, required this.labelText, required this.suffixIcon,   });
  final String labelText;
  final Widget suffixIcon;

  @override
  Widget build(BuildContext context) {
    return TextField(

    decoration: InputDecoration(
      floatingLabelBehavior: FloatingLabelBehavior.always,
      labelText: labelText,
      suffixIcon: suffixIcon,
      hintText: "email",
      hintStyle: TextStyle(fontFamily: "Muli",),




      border: OutlineInputBorder(
        borderRadius: BorderRadius.horizontal(left: Radius.circular(25),right: Radius.circular(25)),

      ),

    ),
    );




  }
}

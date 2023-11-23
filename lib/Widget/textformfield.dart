import 'package:flutter/material.dart';

class Textformfield extends StatelessWidget {

  const Textformfield({super.key, required this.labelText, required this.suffixIcon,   });
  final String labelText;
  final Widget suffixIcon;

  @override
  Widget build(BuildContext context) {
    return TextField(

    decoration: InputDecoration(
      labelText: labelText,
      suffixIcon: suffixIcon,





      border: OutlineInputBorder(
        borderRadius: BorderRadius.horizontal(left: Radius.circular(25),right: Radius.circular(25)),

      ),

    ),
    );




  }
}

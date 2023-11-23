import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final Color buttonColor;
  final String buttonText;
  final VoidCallback onPressed;


  const CustomButton({
    Key? key,
    required this.buttonColor,
    required this.buttonText,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25.0), // إضافة حواف منحنية بدرجة 25
      ),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: buttonColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25.0), // إعداد نفس الحواف المنحنية هنا
          ),
        ),
        onPressed: onPressed,
        child: Text(buttonText,style: TextStyle(fontSize: 18)),
      ),
    );
  }
}


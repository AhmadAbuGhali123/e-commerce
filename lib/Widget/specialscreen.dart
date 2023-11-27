import 'package:flutter/material.dart';

class SpecialScreen extends StatelessWidget {
  final String imagePath;
  final String title;
  final String subTitle;

  const SpecialScreen({super.key, required this.imagePath, required this.title, required this.subTitle});

  @override
  Widget build(BuildContext context) {
    return  Stack(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(20.0),
          child: Image(
            image: AssetImage(imagePath),
            width: 250.0,
            height: 100.0,
            fit: BoxFit.cover,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Text(
                title,
                style: TextStyle(
                  fontSize: 20,
                  fontFamily: "Muli",
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                ),
              ),
              Text(
                subTitle,
                style: TextStyle(
                  fontSize: 15,
                  fontFamily: "Muli",
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

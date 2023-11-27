import 'package:flutter/material.dart';

class ProductOrice extends StatelessWidget {
  const ProductOrice({super.key, required this.price, required this.title, required this.imagePath, required this.OnTap});
  final String imagePath;
  final String title;
  final String price;
  final void Function()? OnTap;

  @override
  Widget build(BuildContext context) {
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [

        InkWell(
         onTap: OnTap,
          child: Container(
            height: 150,
            width: 150,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Color(0xFFFFFAF0),
              image: DecorationImage(
                image: AssetImage(imagePath),
              ),
            ),
          ),
        ),
        SizedBox(height: 10),
        Text(
          title,
          style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
        ),
        SizedBox(height: 5),
        Row(
          children: [
            Text(
              price,
              style: TextStyle(
                  color: Colors.deepOrange,
                  fontWeight: FontWeight.w500,
                  fontSize: 20),
            ),
            SizedBox(width: 65),
            GestureDetector(
              onTap: () {
                // Handle favorite icon tap
              },
              child: Icon(
                Icons.favorite_border,
                color: Colors.grey,
              ),
            ),
          ],
        ),
      ],
    );
  }
}


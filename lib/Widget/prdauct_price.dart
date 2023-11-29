import 'package:flutter/material.dart';

class ProductOrice extends StatefulWidget {

  const ProductOrice({super.key, required this.price, required this.title, required this.imagePath, required this.OnTap});
  final String imagePath;
  final String title;
  final String price;
  final void Function()? OnTap;

  @override
  State<ProductOrice> createState() => _ProductOriceState();
}

class _ProductOriceState extends State<ProductOrice> {
  bool isLiked =false;
  @override
  Widget build(BuildContext context) {


    return  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [

        InkWell(
         onTap: widget.OnTap,
          child: Container(
            height: 150,
            width: 150,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Color(0xFFFFFAF0),
              image: DecorationImage(
                image: AssetImage(widget.imagePath),
              ),
            ),
          ),
        ),
        SizedBox(height: 10),
        Text(
          widget.title,
          style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
        ),
        SizedBox(height: 5),
        Row(
          children: [
            Text(
              widget.price,
              style: TextStyle(
                  color: Colors.deepOrange,
                  fontWeight: FontWeight.w500,
                  fontSize: 20),
            ),
            SizedBox(width: 65),
            GestureDetector(
              onTap: () {
                setState(() {
                  isLiked =!isLiked;
                });
              },
              child: Icon( Icons.favorite,
                color: isLiked ? Colors.red : Colors.grey ),
            ),
          ],
        ),
      ],
    );
  }
}


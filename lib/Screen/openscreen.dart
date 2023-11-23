import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../Widget/button.dart';

class OpenScreen extends StatefulWidget {
  const OpenScreen({Key? key}) : super(key: key);

  @override
  State<OpenScreen> createState() => _OpenScreenState();
}

class _OpenScreenState extends State<OpenScreen> {
  int selectedImageIndex = 0;

  List<String> imagePaths = [
    "assets/images/ps4_console_white_1.png",
    "assets/images/ps4_console_white_2.png",
    "assets/images/ps4_console_white_3.png",
    "assets/images/ps4_console_white_4.png",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(top: 10),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.of(context).pop();
                      },
                      child: Icon(Icons.arrow_back, size: 30),
                    ),
                    Container(
                      child: Row(
                        children: [
                          Text("4.8"),
                          SizedBox(width: 5),
                          SvgPicture.asset("assets/icons/Star Icon.svg"),
                        ],
                      ),
                      height: 20,
                      width: 40,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ],
                ),
                Stack(
                  children: [
                    Column(
                      children: [
                        GestureDetector(
                          onTap: () {
                            // تفاصيل الصورة الكبيرة
                          },
                          child: Image.asset(
                            imagePaths[selectedImageIndex],
                            width: double.infinity,
                          ),
                        ),
                        SizedBox(height: 20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            for (int i = 0; i < imagePaths.length; i++)
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    selectedImageIndex = i;
                                  });
                                },
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    border: Border.all(color: Colors.black),
                                  ),
                                  height: 50,
                                  width: 50,
                                  child: Image.asset(
                                    imagePaths[i],
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                          ],
                        ),
                        SizedBox(height: 20),
                        Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Colors.black12,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(30),
                              topRight: Radius.circular(30),
                            ),
                          ),
                          child: Padding(
                            padding: EdgeInsets.only(left: 10, top: 10),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Wireless Controller",
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontFamily: "Muli",
                                    fontWeight: FontWeight.w900,
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Container(
                                      padding: EdgeInsets.all(10),
                                      height: 40,
                                      width: 70,
                                      decoration: BoxDecoration(
                                        color: Colors.deepOrange[300],
                                        borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(10),
                                          bottomLeft: Radius.circular(10),
                                        ),
                                      ),
                                      child: SvgPicture.asset(
                                        "assets/icons/Heart Icon_2.svg",
                                        height: 30,
                                        width: 30,
                                        fit: BoxFit.contain,
                                      ),
                                    ),
                                  ],
                                ),
                                Text(
                                  "Wireless Controller for PS4 gives you what\nyou want in your gaming from over precision\ncontrol your games to sharing ...  ",
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontFamily: "Muli",
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                SizedBox(height: 20),
                                Text(
                                  "See More Detail >",
                                  style: TextStyle(
                                    color: Colors.deepOrange,
                                    fontSize: 18,
                                    fontFamily: "Muli",
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 20),
                        Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Colors.black12,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(30),
                              topRight: Radius.circular(30),
                            ),
                          ),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Row(
                                  children: [
                                    CircleAvatar(
                                      backgroundColor: Colors.red,
                                      maxRadius: 15,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(20.0),
                                      child: CircleAvatar(
                                        backgroundColor: Colors.deepPurple,
                                        maxRadius: 15,
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(right: 20),
                                      child: CircleAvatar(
                                        backgroundColor: Colors.orange,
                                        maxRadius: 15,
                                      ),
                                    ),
                                    CircleAvatar(
                                      backgroundColor: Colors.white,
                                      maxRadius: 15,
                                    ),
                                    SizedBox(width: 100),
                                    CircleAvatar(
                                      backgroundColor: Colors.white,
                                      child: SvgPicture.asset(
                                        "assets/icons/remove.svg",
                                        width: 20,
                                      ),
                                    ),
                                    SizedBox(width: 20),
                                    CircleAvatar(
                                      backgroundColor: Colors.white,
                                      child: SvgPicture.asset(
                                        "assets/icons/Plus Icon.svg",
                                        width: 20,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 50),
                        Container(
                          height: 110,
                          alignment: Alignment.bottomCenter,
                          decoration: BoxDecoration(
                            color: Colors.black12,
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(20),
                              topLeft: Radius.circular(20),
                            ),
                          ),
                          child: CustomButton(
                            onPressed: () {},
                            buttonText: "Add To Cart",
                            buttonColor: Colors.deepOrange,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

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
      appBar: AppBar(
        backgroundColor: Colors.grey[400],
        elevation: 0,
        shape: const ContinuousRectangleBorder(
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(50), topLeft: Radius.circular(50))),
        automaticallyImplyLeading: false,
      ),
      backgroundColor: Colors.grey[200],
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 10),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.of(context).pop();
                        },
                        child: const Icon(Icons.arrow_back, size: 30),
                      ),
                      Container(
                        height: 30,
                        width: 60,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text("4.8"),
                            const SizedBox(width: 5),
                            SvgPicture.asset("assets/icons/Star Icon.svg"),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Stack(
                  children: [
                    GestureDetector(
                      onTap: () {},
                      child: Image.asset(
                        imagePaths[selectedImageIndex],
                        width: double.infinity,
                      ),
                    ),
                    const SizedBox(height: 20),
                    SizedBox(
                      height: width1hight0(0, context) * 0.4,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 50, right: 50),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(15),
                                      ),
                                      height: 50,
                                      width: 50,
                                      child: Image.asset(
                                        imagePaths[i],
                                      ),
                                    ),
                                  ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 20),

                    SizedBox(
                      height: width1hight0(0, context) * 0.77,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                            height: width1hight0(0, context) * 0.350,
                            width: double.infinity,
                            decoration: const BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(50),
                                topRight: Radius.circular(50),
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 15, top: 15),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
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
                                        padding: const EdgeInsets.all(10),
                                        height: 50,
                                        width: 70,
                                        decoration: BoxDecoration(
                                          color: Colors.deepOrange[100],
                                          borderRadius: const BorderRadius.only(
                                            topLeft: Radius.circular(20),
                                            bottomLeft: Radius.circular(20),
                                          ),
                                        ),
                                        child: SvgPicture.asset(
                                          "assets/icons/Heart Icon_2.svg",
                                          color: Colors.red,
                                          fit: BoxFit.none,
                                        ),
                                      ),
                                    ],
                                  ),
                                  const Text(
                                    "Wireless Controller for PS4 gives you what\nyou want in your gaming from over precision\ncontrol your games to sharing ...  ",
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontFamily: "Muli",
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  const SizedBox(height: 20),
                                  const Text(
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
                        ],
                      ),
                    ),

                    SizedBox(
                      height: width1hight0(0, context) * 0.83,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width,
                            height: 100,
                            decoration: BoxDecoration(
                              color: Colors.grey[100],
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(50),
                                topRight: Radius.circular(50),
                              ),
                            ),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      const CircleAvatar(
                                        backgroundColor: Colors.red,
                                        maxRadius: 12,
                                      ),
                                      Padding(
                                        padding: EdgeInsets.all(0.02 *
                                            MediaQuery.of(context).size.width),
                                        child: const CircleAvatar(
                                          backgroundColor: Colors.deepPurple,
                                          maxRadius: 12,
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(
                                            right: 0.04 *
                                                MediaQuery.of(context)
                                                    .size
                                                    .width),
                                        child: const CircleAvatar(
                                          backgroundColor: Colors.orange,
                                          maxRadius: 12,
                                        ),
                                      ),
                                      const CircleAvatar(
                                        backgroundColor: Colors.white,
                                        maxRadius: 12,
                                      ),
                                      SizedBox(
                                          width: 0.2 *
                                              MediaQuery.of(context)
                                                  .size
                                                  .width),
                                      CircleAvatar(
                                        backgroundColor: Colors.white,
                                        child: SvgPicture.asset(
                                          "assets/icons/remove.svg",
                                          color: Colors.deepOrange,
                                          width: 0.05 *
                                              MediaQuery.of(context).size.width,
                                        ),
                                      ),
                                      SizedBox(
                                          width: 0.07 *
                                              MediaQuery.of(context)
                                                  .size
                                                  .width),
                                      CircleAvatar(
                                        backgroundColor: Colors.white,
                                        child: SvgPicture.asset(
                                          "assets/icons/Plus Icon.svg",
                                          color: Colors.deepOrange,
                                          width: 0.05 *
                                              MediaQuery.of(context).size.width,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),

                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.94,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                            height: width1hight0(0, context) * 0.14,
                            alignment: Alignment.center,
                            decoration: const BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(50),
                                topLeft: Radius.circular(50),
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: CustomButton(
                                onPressed: () {},
                                buttonText: "Add To Cart",
                                buttonColor: Colors.deepOrange,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ), //كبسة
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

double width1hight0(int a, BuildContext context) {
  if (a == 1) {
    return MediaQuery.of(context).size.width;
  } else {
    return MediaQuery.of(context).size.height;
  }
}

import 'dart:math';
import 'package:flutter/material.dart';

import '../Widget/button.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  int currentIndex = 0;

  List<String> imagePaths = [
    "assets/images/splash_1.png",
    "assets/images/splash_2.png",
    "assets/images/splash_3.png",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[400],
        elevation: 0,
        shape: const ContinuousRectangleBorder(borderRadius: BorderRadius.only(topRight: Radius.circular(50),topLeft: Radius.circular(50))),
        automaticallyImplyLeading: false,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SafeArea(
          child: Column(
            children: [
              const SizedBox(
                height: 80,
              ),
              const Text(
                "TOKOTO",
                style: TextStyle(
                    fontFamily: "Muli",
                    fontWeight: FontWeight.w700,
                    fontSize: 40,
                    color: Colors.deepOrange),
              ),
              const Text("Welcome to Tokoto, Let's shop!",
                  textAlign: TextAlign.center),
              const SizedBox(height: 20),

              // Rotating Images Section
              Container(
                height: 300,
                child: PageView.builder(
                  itemCount: imagePaths.length,
                  onPageChanged: (index) {
                    setState(() {
                      currentIndex = index;
                    });
                  },
                  itemBuilder: (context, index) {
                    return Transform.rotate(
                      angle: currentIndex * pi ,
                      child: Image.asset(
                        imagePaths[index],
                        width: 300,
                        height: 300,
                      ),
                    );
                  },
                ),
              ),
              const SizedBox(height: 20),

              // Dots Navigation
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(
                  imagePaths.length,
                      (index) => Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: 10,
                      height: 10,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: currentIndex == index
                            ? Colors.deepOrange
                            : Colors.grey,
                      ),
                    ),
                  ),
                ),
              ),


              Padding(
                padding: const EdgeInsets.only(top: 100),
                child: CustomButton(
                  buttonColor: Colors.deepOrange,
                  buttonText: "Continue",
                  onPressed: () {
                    if (currentIndex < imagePaths.length - 1) {

                      setState(() {
                        currentIndex++;
                      });
                    } else {

                      Navigator.pushNamed(context, '/LoginPage');
                    }
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
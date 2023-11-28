import 'dart:math';
import 'package:flutter/material.dart';

import '../Widget/button.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  late PageController _pageController;
  int currentIndex = 0;

  List<String> imagePaths = [
    "assets/images/splash_1.png",
    "assets/images/splash_2.png",
    "assets/images/splash_3.png",
  ];

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: currentIndex);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[400],
        elevation: 0,
        shape: const ContinuousRectangleBorder(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(50),
            topLeft: Radius.circular(50),
          ),
        ),
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
                  color: Colors.deepOrange,
                ),
              ),
              const Text("Welcome to Tokoto, Let's shop!",
                  textAlign: TextAlign.center),
              const SizedBox(height: 20),
              Container(
                height: 300,
                child: PageView.builder(
                  controller: _pageController,
                  itemCount: imagePaths.length,
                  itemBuilder: (context, index) {
                    double rotationAngle = (index - currentIndex) * pi;
                    return Transform.rotate(
                      angle: rotationAngle,
                      child: Image.asset(
                        imagePaths[index],
                        width: 300,
                        height: 300,
                        fit: BoxFit.contain,
                      ),
                    );
                  },
                  onPageChanged: (index) {
                    setState(() {
                      currentIndex = index;
                    });
                  },
                ),
              ),
              const SizedBox(height: 20),
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
                      _pageController.nextPage(
                        duration: Duration(milliseconds: 500),
                        curve: Curves.easeInOut,
                      );
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

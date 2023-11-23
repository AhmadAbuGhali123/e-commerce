import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../Widget/button.dart';
import '../Widget/textformfield.dart';
import 'loginPage.dart';

class complateProf extends StatefulWidget {
  const complateProf({super.key});

  @override
  State<complateProf> createState() => _complateProfState();
}

class _complateProfState extends State<complateProf> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(


              children: [
                Container(
                  alignment: Alignment.topLeft,
                  child: InkWell(
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                    child: Icon(Icons.arrow_back, size: 30),
                  ),
                ),

                SizedBox(height: 80,),
                Text(
                  "Complete Profile",
                  style: TextStyle(fontFamily: "Muli", fontWeight: FontWeight.w700, fontSize: 30),
                ),
                Text("Complete your details or continue ", textAlign: TextAlign.center),
                Text("with social media"),
                SizedBox(height: 60),
                Textformfield(
                  suffixIcon: Icon(Icons.person),
                  labelText: "Enter your first name",
                ),
                SizedBox(height: 30),
                Textformfield(
                  suffixIcon: Icon(Icons.person),
                  labelText: "Enter your last name",
                ),
                SizedBox(height: 30),
                Textformfield(
                  suffixIcon: Icon(Icons.phone),
                  labelText: "Enter your phone number",
                ),
                SizedBox(height: 30),
                Padding(
                  padding: EdgeInsets.only(bottom: 45),
                  child: Textformfield(
                    suffixIcon: Icon(Icons.location_on),
                    labelText: "Enter your phone address",
                  ),
                ),


                CustomButton(
                  
                  buttonColor: Colors.deepOrange,
                  buttonText: "Continue",
                  onPressed: () {},
                ),
                SizedBox(height: 60),
                Padding(
                  padding: const EdgeInsets.all(60.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                     Text("By continuing your confirm that you agree"),
                      SizedBox(height: 5),
                      Text("with our Term and Condition"),
                    ],
                  ),
                ),


              ],
            ),
          ),
        ),
      ),
    );
  }
}

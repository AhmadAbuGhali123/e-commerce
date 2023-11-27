import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../Widget/button.dart';
import '../Widget/textformfield.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});
  static const route ='/register';

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
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
                  "Register Account",
                  style: TextStyle(fontFamily: "Muli", fontWeight: FontWeight.w700, fontSize: 30),
                ),
                Text("Complete your details or continue ", textAlign: TextAlign.center),
                Text("with social media"),
                SizedBox(height: 60),
                Textformfield(
                  suffixIcon: Icon(Icons.email_outlined),
                  labelText: "Enter your email",
                ),
                SizedBox(height: 40),
                Textformfield(
                  suffixIcon: Icon(Icons.lock),
                  labelText: "Enter your password",
                ),
                SizedBox(height: 40),
                Padding(
                 padding: EdgeInsets.only(bottom: 45),
                  child: Textformfield(
                    suffixIcon: Icon(Icons.lock),
                    labelText: "Re-Enter your password",
                  ),
                ),


                CustomButton(
                  buttonColor: Colors.deepOrange,
                  buttonText: "Continue",
                  onPressed: () {
                    Navigator.pushNamed(context, "/complateProf");
                  },
                ),
                SizedBox(height: 60),
                Padding(
                  padding: const EdgeInsets.all(50.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset("assets/icons/google-icon.svg"),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 40),
                        child: SvgPicture.asset("assets/icons/facebook-2.svg"),
                      ),
                      SvgPicture.asset("assets/icons/twitter.svg"),
                    ],
                  ),
                ),
                SizedBox(height: 30),
                Text("By continuning your confirm that you agree"),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

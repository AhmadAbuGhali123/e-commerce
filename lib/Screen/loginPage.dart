import 'package:ecommerce/Screen/register.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../Widget/button.dart';
import '../Widget/checkbox.dart';
import '../Widget/textformfield.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                SizedBox(
                  height: 80,
                ),
                Text(
                  "Welcome Back",
                  style: TextStyle(
                      fontFamily: "Muli",
                      fontWeight: FontWeight.w700,
                      fontSize: 30),
                ),
                Text("Sign in with your email and password ",
                    textAlign: TextAlign.center),
                Text("or continue with social media"),
                SizedBox(height: 60),
                Textformfield(
                  suffixIcon: Icon(Icons.email_outlined),
                  labelText: "Enter your email",
                ),
                SizedBox(height: 30),
                Textformfield(
                  suffixIcon: Icon(Icons.lock),
                  labelText: "Enter your password",
                ),
                SizedBox(height: 40),
                Row(
                  children: [
                    MyCheckbox(),
                    SizedBox(width: 8),
                    Text("Remember me"),
                    Spacer(),
                    InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, '/ForgetPass');
                      },
                      child: Text(
                        "Forget Password",
                        style: TextStyle(
                          decoration: TextDecoration.underline,
                          decorationColor: Colors.black,
                          decorationThickness: 1.0,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                CustomButton(
                  buttonColor: Colors.deepOrange,
                  buttonText: "Continue",
                  onPressed: () {
                    Navigator.pushNamed(context, '/ScreenSearsh');
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Don't have an account ?",
                        style: TextStyle(fontSize: 18)),
                    SizedBox(width: 10),
                    InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, '/register');
                        },
                        child: Text("Sign Up",
                            style: TextStyle(
                                color: Colors.deepOrange, fontSize: 18))),
                  ],
                ),
                SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

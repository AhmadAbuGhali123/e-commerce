
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
      appBar: AppBar(
        backgroundColor: Colors.grey[400],
        elevation: 0,
        shape: const ContinuousRectangleBorder(borderRadius: BorderRadius.only(topRight: Radius.circular(50),topLeft: Radius.circular(50))),
        automaticallyImplyLeading: false,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                const SizedBox(
                  height: 80,
                ),
                const Text(
                  "Welcome Back",
                  style: TextStyle(
                      fontFamily: "Muli",
                      fontWeight: FontWeight.w700,
                      fontSize: 30),
                ),
                const Text("Sign in with your email and password ",
                    textAlign: TextAlign.center),
                const Text("or continue with social media"),
                const SizedBox(height: 60),
                const Textformfield(
                  hintText: "Enter your email",
                  suffixIcon: Icon(Icons.email_outlined),
                  labelText: "Email",
                ),
                const SizedBox(height: 30),
                const Textformfield(
                  hintText: "Enter your password",
                  suffixIcon: Icon(Icons.lock),
                  labelText: "password",
                ),
                const SizedBox(height: 40),
                Row(
                  children: [
                    MyCheckbox(),
                    const SizedBox(width: 8),
                    const Text("Remember me"),
                    const Spacer(),
                    InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, '/ForgetPass');
                      },
                      child: const Text(
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
                const SizedBox(height: 20),
                CustomButton(
                  buttonColor: Colors.deepOrange,
                  buttonText: "Continue",
                  onPressed: () {
                    Navigator.pushNamed(context, '/ScreenSearsh');
                  },
                ),
                const SizedBox(height: 60),
                Padding(
                  padding: const EdgeInsets.all(50.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset("assets/icons/google-icon.svg"),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 40),
                        child: SvgPicture.asset("assets/icons/facebook-2.svg"),
                      ),
                      SvgPicture.asset("assets/icons/twitter.svg"),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Don't have an account ?",
                        style: TextStyle(fontSize: 18)),
                    const SizedBox(width: 10),
                    InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, '/register');
                        },
                        child: const Text("Sign Up",
                            style: TextStyle(
                                color: Colors.deepOrange, fontSize: 18))),
                  ],
                ),
                const SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

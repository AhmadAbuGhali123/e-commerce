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
                Container(
                  alignment: Alignment.topLeft,
                  child: InkWell(
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                    child: const Icon(Icons.arrow_back, size: 30),
                  ),
                ),
                const SizedBox(height: 80,),
                const Text(
                  "Register Account",
                  style: TextStyle(fontFamily: "Muli", fontWeight: FontWeight.w700, fontSize: 30),
                ),
                const Text("Complete your details or continue ", textAlign: TextAlign.center),
                const Text("with social media"),
                const SizedBox(height: 60),
                const Textformfield(
                  hintText: "Enter your email",
                  suffixIcon: Icon(Icons.email_outlined),
                  labelText: "Email",
                ),
                const SizedBox(height: 40),
                const Textformfield(
                  hintText: "Enter your password",
                  suffixIcon: Icon(Icons.lock),
                  labelText: "Password",
                ),
                const SizedBox(height: 40),
                const Padding(
                 padding: EdgeInsets.only(bottom: 45),
                  child: Textformfield(
                    hintText: "Re-Enter your password",
                    suffixIcon: Icon(Icons.lock),
                    labelText: "Password",
                  ),
                ),


                CustomButton(
                  buttonColor: Colors.deepOrange,
                  buttonText: "Continue",
                  onPressed: () {
                    Navigator.pushNamed(context, "/complateProf");
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
                const SizedBox(height: 30),
                const Text("By continuning your confirm that you agree"),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

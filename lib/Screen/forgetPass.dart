import 'package:ecommerce/Screen/register.dart';
import 'package:flutter/material.dart';
import '../Widget/button.dart';
import '../Widget/textformfield.dart';

class ForgetPass extends StatelessWidget {
  const ForgetPass({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
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
                  "Forgot Password",
                  style: TextStyle(fontFamily: "Muli", fontWeight: FontWeight.w700, fontSize: 30),
                ),
                Text("please enter your email and we will send  ", textAlign: TextAlign.center),
                Text("you a link to return to your account"),

                Padding(
                  padding: EdgeInsets.symmetric(vertical: 100),
                  child: Textformfield(
                    suffixIcon: Icon(Icons.email_outlined),
                    labelText: "Enter your email",
                  ),
                ),


                CustomButton(
                  buttonColor: Colors.deepOrange,
                  buttonText: "Continue",
                  onPressed: () {

                  },

                ),
                SizedBox(height: 60),

                Padding(
                  padding: EdgeInsets.only(top: 60),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [

                      Text("Don't have an account ?",style: TextStyle(fontSize: 18)),
                      SizedBox(width: 10),

                      InkWell(
                          onTap: () {
                            Navigator.pushNamed(context, '/register');
                          },
                          child: Text("Sign Up", style: TextStyle(color: Colors.deepOrange,fontSize: 18))),
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

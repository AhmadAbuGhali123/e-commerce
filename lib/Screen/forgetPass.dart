import 'package:ecommerce/Screen/register.dart';
import 'package:flutter/material.dart';
import '../Widget/button.dart';
import '../Widget/textformfield.dart';

class ForgetPass extends StatelessWidget {
  const ForgetPass({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
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
                  "Forgot Password",
                  style: TextStyle(fontFamily: "Muli", fontWeight: FontWeight.w700, fontSize: 30),
                ),
                const Text("please enter your email and we will send  ", textAlign: TextAlign.center),
                const Text("you a link to return to your account"),

                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 100),
                  child: Textformfield(
                    hintText: "Enter your email",
                    suffixIcon: Icon(Icons.email_outlined),
                    labelText: "Email",
                  ),
                ),


                CustomButton(
                  buttonColor: Colors.deepOrange,
                  buttonText: "Continue",
                  onPressed: () {

                  },

                ),
                const SizedBox(height: 60),

                Padding(
                  padding: const EdgeInsets.only(top: 60),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [

                      const Text("Don't have an account ?",style: TextStyle(fontSize: 18)),
                      const SizedBox(width: 10),

                      InkWell(
                          onTap: () {
                            Navigator.pushNamed(context, '/register');
                          },
                          child: const Text("Sign Up", style: TextStyle(color: Colors.deepOrange,fontSize: 18))),
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

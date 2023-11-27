import 'package:flutter/material.dart';

import '../Widget/button.dart';

class OtpVer extends StatefulWidget {
  const OtpVer({super.key});

  @override
  State<OtpVer> createState() => _OtpVerState();
}

class _OtpVerState extends State<OtpVer> {
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
                const SizedBox(height: 80,),
                const Text(
                  "OTP Verification",
                  style: TextStyle(fontFamily: "Muli", fontWeight: FontWeight.w700, fontSize: 30),
                ),
                const Text("We sent ypur code to +1 898 860 *** ", textAlign: TextAlign.center),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("This code will expired in "),
                    Text("00:13",style: TextStyle(color: Colors.deepOrange),),
                  ],
                ),

                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 150),


                 child: Row(
                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                   children: List.generate(
                     4,
                         (index) => Container(
                       width: 50,
                       height: 50,
                       decoration: BoxDecoration(
                         border: Border.all(
                           color: Colors.black,
                           width: 2.0,
                         ),
                         borderRadius: BorderRadius.circular(10.0),
                       ),
                       child: const TextField(
                         textAlign: TextAlign.center,
                         style: TextStyle(fontSize: 20),
                         keyboardType: TextInputType.number,
                         maxLength: 1,
                         decoration: InputDecoration(
                           counterText: "",
                           border: InputBorder.none,
                         ),
                       ),
                     ),
                   ),
                 ),









                ),


                CustomButton(
                  buttonColor: Colors.deepOrange,
                  buttonText: "Continue",
                  onPressed: () {
                Navigator.pushNamed(context, '/LoginPage');
                  },

                ),
                const SizedBox(height: 60),

                const Padding(
                  padding: EdgeInsets.only(top: 60),
                  child: Text("Resend OTP Code",),
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}

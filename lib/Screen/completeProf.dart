import 'package:flutter/material.dart';
import '../Widget/button.dart';
import '../Widget/textformfield.dart';


class complateProf extends StatefulWidget {
  const complateProf({super.key});

  @override
  State<complateProf> createState() => _complateProfState();
}

class _complateProfState extends State<complateProf> {
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
                  "Complete Profile",
                  style: TextStyle(fontFamily: "Muli", fontWeight: FontWeight.w700, fontSize: 30),
                ),
                const Text("Complete your details or continue ", textAlign: TextAlign.center),
                const Text("with social media"),
                const SizedBox(height: 60),
                const Textformfield(
                  hintText: "Enter your first name",
                  suffixIcon: Icon(Icons.person),
                  labelText: "Frst Name",
                ),
                const SizedBox(height: 30),
                const Textformfield(
                  hintText:"Enter your last name" ,
                  suffixIcon: Icon(Icons.person),
                  labelText: "Last Name",
                ),
                const SizedBox(height: 30),
                const Textformfield(
                  hintText: "Enter your phone number",
                  suffixIcon: Icon(Icons.phone),
                  labelText: "Phone number",
                ),
                const SizedBox(height: 30),
                const Padding(
                  padding: EdgeInsets.only(bottom: 45),
                  child: Textformfield(
                    hintText:"Enter your phone address",
                    suffixIcon: Icon(Icons.location_on),
                    labelText: "Address",
                  ),
                ),


                CustomButton(
                  
                  buttonColor: Colors.deepOrange,
                  buttonText: "Continue",
                  onPressed: () {
                    Navigator.pushNamed(context, '/OtpVer');
                  },
                ),
                const SizedBox(height: 60),
                const Padding(
                  padding: EdgeInsets.all(60.0),
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

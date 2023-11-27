import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../Widget/prdauct_price.dart';
import '../Widget/specialscreen.dart';

class ScreenSearch extends StatefulWidget {
  const ScreenSearch({Key? key}) : super(key: key);

  @override
  State<ScreenSearch> createState() => _ScreenSearchState();
}

class _ScreenSearchState extends State<ScreenSearch> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: 50,
                        decoration: BoxDecoration(
                          color: Colors.grey[300],
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: TextField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            prefixIcon: Icon(Icons.search),
                            labelText: "Search product",
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 20),  // Add some space between elements
                    CircleAvatar(
                      maxRadius: 24,
                      backgroundColor: Colors.grey[300],
                      child: SvgPicture.asset("assets/icons/Cart Icon.svg"),
                    ),
                    SizedBox(width: 20),  // Add some space between elements
                    CircleAvatar(
                      maxRadius: 24,
                      backgroundColor: Colors.grey[300],
                      child: SvgPicture.asset("assets/icons/Bell.svg"),
                    ),
                  ],
                ),

                ////////////////////////////////////////////////////
                SizedBox(
                  height: 30,
                ),
                Container(
                  alignment: Alignment.topLeft,
                  decoration: BoxDecoration(
                    color: Colors.deepPurple,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  height: 90,
                  width: double.infinity,
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      children: [
                        Text("A Summer Surprise",
                            style: TextStyle(color: Colors.white)),
                        SizedBox(
                          height: 10,
                        ),
                        Text("CashBack 20%",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 22,
                                fontFamily: "Muli",
                                fontWeight: FontWeight.w700)),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      buildCategoryItem("Flash", "assets/icons/Flash Icon.svg"),
                      SizedBox(width: 15),
                      buildCategoryItem("Bill", "assets/icons/Bill Icon.svg"),
                      SizedBox(width: 15),
                      buildCategoryItem("Game", "assets/icons/Game Icon.svg"),
                      SizedBox(width: 15),
                      buildCategoryItem("Daily", "assets/icons/Gift Icon.svg"),
                      SizedBox(width: 15),
                      buildCategoryItem("More", "assets/icons/Discover.svg"),
                    ],
                  ),
                ),

                SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      "Special for you",
                      style: TextStyle(
                          fontFamily: "Mali",
                          fontWeight: FontWeight.w400,
                          fontSize: 20),
                    ),
                    Text(
                      "See More",
                      style: TextStyle(fontSize: 15, color: Colors.grey[400]),
                    ),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      SpecialScreen(
                        title: "Smartphone",
                        imagePath: "assets/images/Image Banner 2.png",
                        subTitle: "18 Brands",
                      ),

                      SizedBox(
                        width: 20,
                      ),
                      SpecialScreen(
                        title: "Fashion",
                        imagePath: "assets/images/Image Banner 3.png",
                        subTitle: "24 Brands",
                      ),



                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 30, bottom: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        "Popular Products",
                        style: TextStyle(
                            fontFamily: "Mali",
                            fontWeight: FontWeight.w400,
                            fontSize: 20),
                      ),
                      Text(
                        "See More",
                        style: TextStyle(fontSize: 15, color: Colors.grey[400]),
                      ),
                    ],
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                  children: [
                    ProductOrice(
                      OnTap: () {
                          Navigator.pushNamed(context, '/OpenScreen');
                      },
                      imagePath: "assets/images/Image Popular Product 1.png",
                      title: "Wirless Controller \nfor PS4" ,
                      price:"\$46.99" ,

                    ),
                    Padding(
                      padding:  EdgeInsets.only(left: 20,right: 20),
                      child: ProductOrice(
                        OnTap: () {

                        },
                        imagePath: "assets/images/Image Popular Product 2.png",
                        title: "Nike sport White  \nMan pant" ,
                        price:"\$50.50" ,

                      ),
                    ),
                    ProductOrice(
                      OnTap: () {

                      },
                      imagePath: "assets/images/Image Popular Product 3.png",
                      title: "Wirless Controller \nfor PS4" ,
                      price:"\$46.99" ,

                    ),

                  ],

                  ),
                ),

              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar:
      Container(
        height: 70,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            SvgPicture.asset("assets/icons/Shop Icon.svg",color: Colors.deepOrange),
            SvgPicture.asset("assets/icons/Heart Icon.svg",color: Colors.deepOrange),
            SvgPicture.asset("assets/icons/Chat bubble Icon.svg",color: Colors.deepOrange),
            SvgPicture.asset("assets/icons/User Icon.svg",color: Colors.deepOrange),
          ],
        ),
      ),
    );
  }



  Widget buildCategoryItem(String title, String iconPath) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            color: Colors.orange[100],
            borderRadius: BorderRadius.circular(15),
          ),
          height: 60,
          width: 60,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(
                iconPath,
                width: 30,
                height: 30,
              ),
            ],
          ),
        ),
        SizedBox(
          height: 5,
        ),
        Text(title),
        Text(""),
      ],
    );
  }



}

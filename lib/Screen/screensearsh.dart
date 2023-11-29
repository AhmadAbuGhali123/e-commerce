import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';


import '../Widget/prdauct_price.dart';
import '../Widget/specialscreen.dart';
import '../model/popular_det.dart';
import '../model/popular_model.dart';

class ScreenSearch extends StatefulWidget {
  const ScreenSearch({Key? key}) : super(key: key);

  @override
  State<ScreenSearch> createState() => _ScreenSearchState();
}

class _ScreenSearchState extends State<ScreenSearch> {
  List<String> iconSpec=[
    "assets/icons/Shop Icon.svg",
    "assets/icons/Heart Icon.svg",
    "assets/icons/Chat bubble Icon.svg",
    "assets/icons/User Icon.svg"
  ];

List<PopularDetModel> popularDet=[
  PopularDetModel(image: [
       "assets/images/ps4_console_white_1.png",
        "assets/images/ps4_console_white_2.png",
        "assets/images/ps4_console_white_3.png",
        "assets/images/ps4_console_white_4.png"
  ],
    tiltle: "Wireless Controller",
    discrbtion: "Wireless Controller for PS4 gives you what\nyou want in your gaming from over precision\ncontrol your games to sharing ...  ",

  ),
  PopularDetModel(image: [
    "assets/images/Image Popular Product 2.png",
    "assets/images/Image Popular Product 2.png",
    "assets/images/Image Popular Product 2.png",
    "assets/images/Image Popular Product 2.png"
  ],
    tiltle: "Nike sport White \nMan pant",
    discrbtion: "Wireless Controller for PS4 gives you what\nyou want in your gaming from over precision\ncontrol your games to sharing ...  ",

  ),
  PopularDetModel(image: [
    "assets/images/Image Popular Product 3.png",
    "assets/images/Image Popular Product 3.png",
    "assets/images/Image Popular Product 3.png",
    "assets/images/Image Popular Product 3.png"
  ],
    tiltle: "Nike sport White \nMan pant",
    discrbtion: "Wireless Controller for PS4 gives you what\nyou want in your gaming from over precision\ncontrol your games to sharing ...  ",

  ),


];
List<PopularModel> poPULar=[
  PopularModel("assets/images/Image Popular Product 1.png", "Wirless Controller \nfor PS4", "\$46.99"),
  PopularModel("assets/images/Image Popular Product 2.png", "Nike sport White  \nMan pant", "\$50.50"),
  PopularModel("assets/images/Image Popular Product 3.png", "Wirless Controller \nfor PS4", "\$46.99")
];

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(right: 16.0,left: 16.0,bottom: 16.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 5,),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: 50,
                        decoration: BoxDecoration(
                          color: Colors.grey[300],
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: const TextField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            prefixIcon: Icon(Icons.search),
                            labelText: "Search product",
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 20),
                    CircleAvatar(
                      maxRadius: 24,
                      backgroundColor: Colors.grey[300],
                      child: SvgPicture.asset("assets/icons/Cart Icon.svg"),
                    ),
                    const SizedBox(width: 20),
                    CircleAvatar(
                      maxRadius: 24,
                      backgroundColor: Colors.grey[300],
                      child: SvgPicture.asset("assets/icons/Bell.svg"),
                    ),
                  ],
                ),
                const SizedBox(
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
                  child: const Padding(
                    padding: EdgeInsets.all(16.0),
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
                const SizedBox(
                  height: 40,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      buildCategoryItem("Flash", "assets/icons/Flash Icon.svg"),
                      const SizedBox(width: 15),
                      buildCategoryItem("Bill", "assets/icons/Bill Icon.svg"),
                      const SizedBox(width: 15),
                      buildCategoryItem("Game", "assets/icons/Game Icon.svg"),
                      const SizedBox(width: 15),
                      buildCategoryItem("Daily", "assets/icons/Gift Icon.svg"),
                      const SizedBox(width: 15),
                      buildCategoryItem("More", "assets/icons/Discover.svg"),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    const Text(
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
                const SizedBox(
                  height: 30,
                ),
                const SingleChildScrollView(
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
                  padding: const EdgeInsets.only(top: 30, bottom: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      const Text(
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
                    children: List.generate(popularDet.length, (index) {
                      return Row(
                        children: [
                          ProductOrice(
                            OnTap: () {
                              Navigator.pushNamed(context, '/OpenScreen',arguments: {
                                "PopularDetModel":popularDet[index]

                              });
                            },

                            imagePath: poPULar[index].imagePath,
                            title: poPULar[index].title,
                            price: poPULar[index].price,
                          ),
                          SizedBox(width: 20,),
                        ],
                      );

                    })





                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: Container(
        height: MediaQuery.of(context).size.height*0.08,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            SvgPicture.asset(iconSpec[0],
                color: Colors.deepOrange),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, 'HeartScreen',);
              },
              child: SvgPicture.asset(iconSpec[1],
                  color: Colors.deepOrange),
            ),
            SvgPicture.asset(iconSpec[2],
                color: Colors.deepOrange),
            SvgPicture.asset(iconSpec[3],
                color: Colors.deepOrange),
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
        const SizedBox(
          height: 5,
        ),
        Text(title),
        const Text(""),
      ],
    );
  }
}
int a=10;
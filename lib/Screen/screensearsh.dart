import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ScreenSearch extends StatefulWidget {
  const ScreenSearch({Key? key}) : super(key: key);

  @override
  State<ScreenSearch> createState() => _ScreenSearchState();
}

class _ScreenSearchState extends State<ScreenSearch> {
  int _selectedIndex = 0;

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
                    Container(
                      height: 50,
                      width: 235,
                      decoration: BoxDecoration(
                          color: Colors.grey[300],
                          borderRadius: BorderRadius.circular(20)),
                      child: TextField(
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            prefixIcon: Icon(Icons.search),
                            label: Text("Search product")),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 20, left: 20),
                      child: CircleAvatar(
                        maxRadius: 24,
                        backgroundColor: Colors.grey[300],
                        child: SvgPicture.asset("assets/icons/Cart Icon.svg"),
                      ),
                    ),
                    CircleAvatar(
                      maxRadius: 24,
                      backgroundColor: Colors.grey[300],
                      child: SvgPicture.asset("assets/icons/Bell.svg"),
                    ),
                  ],
                ),
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
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      buildCategoryItem("Flash", "assets/icons/Flash Icon.svg"),
                      SizedBox(
                        width: 15,
                      ),
                      buildCategoryItem("Bill", "assets/icons/Bill Icon.svg"),
                      SizedBox(
                        width: 15,
                      ),
                      buildCategoryItem("Game", "assets/icons/Game Icon.svg"),
                      SizedBox(
                        width: 15,
                      ),
                      buildCategoryItem("Daily", "assets/icons/Gift Icon.svg"),
                      SizedBox(
                        width: 15,
                      ),
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
                      buildSpecialOfferItem(
                        "assets/images/Image Banner 2.png",
                        "Smartphone",
                        "18 Brands",
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      buildSpecialOfferItem(
                        "assets/images/Image Banner 3.png",
                        "Fashion",
                        "24 Brands",
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
                      InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, '/OpenScreen');
                        },
                        child: buildPopularProductItem(
                          "assets/images/Image Popular Product 1.png",
                          "Wireless Controller\nfor Ps4",
                          "\$64.99",
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: buildPopularProductItem(
                          "assets/images/Image Popular Product 2.png",
                          "Nike Sport White -\nMan Pant",
                          "\$50.50",
                        ),
                      ),
                      buildPopularProductItem(
                        "assets/images/Image Popular Product 3.png",
                        "Wireless Controller\nfor Ps4",
                        "\$64.99",
                      ),
                    ],
                  ),
                ),

              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          buildNavBarItem(Icons.home, 0),
          buildNavBarItem(Icons.favorite, 1),
          buildNavBarItem(Icons.chat, 2),
          buildNavBarItem(Icons.person, 3),
        ],
      ),
    );
  }

  Widget buildNavBarItem(IconData icon, int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _selectedIndex = index;
        });

        // Add navigation logic here based on the index...
      },
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            icon,
            color: _selectedIndex == index ? Colors.blue : Colors.grey,
          ),
        ],
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

  Widget buildSpecialOfferItem(
      String imagePath, String title, String subTitle) {
    return Stack(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(20.0),
          child: Image(
            image: AssetImage(imagePath),
            width: 250.0,
            height: 100.0,
            fit: BoxFit.cover,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Text(
                title,
                style: TextStyle(
                  fontSize: 20,
                  fontFamily: "Muli",
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                ),
              ),
              Text(
                subTitle,
                style: TextStyle(
                  fontSize: 15,
                  fontFamily: "Muli",
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget buildPopularProductItem(String imagePath, String title, String price,) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [

        Container(
          height: 150,
          width: 150,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Color(0xFFFFFAF0),
            image: DecorationImage(
              image: AssetImage(imagePath),
            ),
          ),
        ),
        SizedBox(height: 10),
        Text(
          title,
          style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
        ),
        SizedBox(height: 5),
        Row(
          children: [
            Text(
              price,
              style: TextStyle(
                  color: Colors.deepOrange,
                  fontWeight: FontWeight.w500,
                  fontSize: 20),
            ),
            SizedBox(width: 65),
            GestureDetector(
              onTap: () {
                // Handle favorite icon tap
              },
              child: Icon(
                Icons.favorite_border,
                color: Colors.grey,
              ),
            ),
          ],
        ),
      ],
    );
  }
}

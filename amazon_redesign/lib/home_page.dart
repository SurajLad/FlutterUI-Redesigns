import 'package:amazon_redesign/helpers/constants.dart';
import 'package:amazon_redesign/widgets/custom_buttons.dart';
import 'package:amazon_redesign/widgets/popular_product.dart';
import 'package:animated_drawer/views/animated_drawer.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

import 'helpers/text_styles.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: Container(
          decoration: BoxDecoration(
            color: appThemeColor,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(26),
              topRight: Radius.circular(26),
            ),
          ),
          child: SalomonBottomBar(
            unselectedItemColor: appRecentColor,
            itemPadding: const EdgeInsets.all(12),
            margin:
                const EdgeInsets.only(left: 20, right: 20, top: 7, bottom: 7),
            currentIndex: selectedIndex,
            onTap: (int x) {
              setState(() {
                selectedIndex = x;
              });
            },
            items: [
              /// Home
              SalomonBottomBarItem(
                icon: Icon(Icons.home),
                title: Text("Home"),
                selectedColor: Colors.white,
              ),

              /// Likes
              SalomonBottomBarItem(
                icon: Icon(Icons.favorite),
                title: Text("Likes"),
                selectedColor: Colors.white,
              ),

              /// Search
              SalomonBottomBarItem(
                icon: Icon(Icons.notifications),
                title: Text("Search"),
                selectedColor: Colors.white,
              ),

              /// Profile
              SalomonBottomBarItem(
                icon: Icon(Icons.shopping_cart),
                title: Text("Profile"),
                selectedColor: Colors.white,
              ),
            ],
          ),
        ),
        body: AnimatedDrawer(
          homePageXValue: 170,
          homePageYValue: 80,
          homePageAngle: -0.2,
          homePageSpeed: 250,
          shadowXValue: 122,
          shadowYValue: 110,
          shadowAngle: -0.275,
          shadowSpeed: 550,
          shadowColor: appRecentColor.withOpacity(0.7),
          backgroundGradient: LinearGradient(
            colors: [
              Colors.white,
              Colors.white,
            ],
          ),
          menuPageContent: Padding(
            padding: const EdgeInsets.only(top: 50.0, left: 20),
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: appThemeColor)),
                    child: CircleAvatar(
                      backgroundImage: NetworkImage(
                        "https://thumbs.dreamstime.com/b/vector-illustration-avatar-dummy-logo-set-image-stock-isolated-object-icon-collection-137161298.jpg",
                      ),
                      maxRadius: 35,
                    ),
                  ),
                  const SizedBox(height: 5),
                  Text("Hello,", style: regularTxtStyle),
                  Text(
                    "Alexa Smith",
                    style: medBoldStyle,
                  ),
                  const SizedBox(height: 15),
                  Container(
                    width: 140,
                    height: 2,
                    color: Colors.grey[200],
                  ),
                  Padding(padding: EdgeInsets.only(bottom: 20)),
                  InkWell(
                    onTap: () {},
                    child: Text("Home Screen",
                        style: smallTxtStyle.copyWith(
                          fontWeight: FontWeight.w600,
                          color: appThemeColor.withOpacity(0.7),
                        )),
                  ),
                  const SizedBox(height: 15),
                  InkWell(
                    onTap: () {},
                    child: Text("Shop By Category",
                        style: smallTxtStyle.copyWith(
                          fontWeight: FontWeight.w600,
                          color: appThemeColor.withOpacity(0.7),
                        )),
                  ),
                  const SizedBox(height: 15),
                  InkWell(
                    onTap: () {},
                    child: Text("Your Orders",
                        style: smallTxtStyle.copyWith(
                          fontWeight: FontWeight.w600,
                          color: appThemeColor.withOpacity(0.7),
                        )),
                  ),
                  const SizedBox(height: 15),
                  InkWell(
                    onTap: () {},
                    child: Text("Your Wishlist",
                        style: smallTxtStyle.copyWith(
                          fontWeight: FontWeight.w600,
                          color: appThemeColor.withOpacity(0.7),
                        )),
                  ),
                  const SizedBox(height: 15),
                  InkWell(
                    onTap: () {},
                    child: Text("Your Account",
                        style: smallTxtStyle.copyWith(
                          fontWeight: FontWeight.w600,
                          color: appThemeColor.withOpacity(0.7),
                        )),
                  ),
                  const SizedBox(height: 15),
                  InkWell(
                    onTap: () {},
                    child: Text("Sell On Amazon",
                        style: smallTxtStyle.copyWith(
                          fontWeight: FontWeight.w600,
                          color: appThemeColor.withOpacity(0.7),
                        )),
                  ),
                  const SizedBox(height: 15),
                  InkWell(
                    onTap: () {},
                    child: Text("Settings",
                        style: smallTxtStyle.copyWith(
                          fontWeight: FontWeight.w600,
                          color: appThemeColor.withOpacity(0.7),
                        )),
                  ),
                  const SizedBox(height: 15),
                  InkWell(
                    onTap: () {},
                    child: Text(
                      "Support",
                      style: smallTxtStyle.copyWith(
                        fontWeight: FontWeight.w600,
                        color: appThemeColor.withOpacity(0.7),
                      ),
                    ),
                  ),
                  const SizedBox(height: 15),
                  Container(
                    width: 140,
                    height: 2,
                    color: Colors.grey[200],
                  ),
                  const SizedBox(height: 20),
                  FlatButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8)),
                    onPressed: () {},
                    color: appThemeColor.withOpacity(0.2),
                    child: Text(
                      "Log Out",
                      style: smallTxtStyle.copyWith(
                        fontWeight: FontWeight.bold,
                        color: appThemeColor.withOpacity(0.7),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          homePageContent: Container(
            color: Colors.white,
            child: buildBody(),
          ),
        ),
      ),
    );
  }

  ListView buildBody() {
    return ListView(
      children: [
        Container(
          width: Get.width,
          height: 270,
          decoration: BoxDecoration(
            color: appThemeColor,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(24),
              bottomRight: Radius.circular(24),
            ),
          ),
          child: Column(
            children: [
              buildAppBar(),
              buildSearchBar(),
              buildCollectionWidget(),
            ],
          ),
        ),
        const SizedBox(height: 15),
        Container(
          margin: const EdgeInsets.only(left: 20, right: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Popular Products",
                style: medBoldStyle,
              ),
              Text(
                "View All",
                style: smallBoldTxtStyle.copyWith(color: Colors.black54),
              ),
            ],
          ),
        ),
        const SizedBox(height: 15),
        Container(
          height: 140,
          child: ListView.builder(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemCount: popularProductList.length,
            itemBuilder: (BuildContext context, int index) {
              return Product(
                product: popularProductList[index],
              );
            },
          ),
        ),
        const SizedBox(height: 15),
        Container(
          margin: const EdgeInsets.only(left: 15, right: 15),
          height: 150.0,
          child: Carousel(
            dotIncreaseSize: 0.8,
            dotSize: 8,
            dotColor: appRecentColor,
            dotBgColor: Colors.transparent,
            borderRadius: true,
            boxFit: BoxFit.cover,
            images: List.generate(
              slideShowList.length,
              (index) => NetworkImage(slideShowList[index]),
            ),
          ),
        ),
        const SizedBox(height: 25),
      ],
    );
  }

  buildCollectionWidget() {
    return Container(
      margin: const EdgeInsets.only(left: 20, right: 20, top: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Best Collections",
            style: medBoldStyle.copyWith(color: Colors.white),
          ),
          const SizedBox(height: 15),
          Container(
            height: 90,
            child: ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: collectionList.length,
              itemBuilder: (BuildContext context, int index) {
                return CustomButton(
                  icon: collectionList[index].imgUrl,
                  name: collectionList[index].name,
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  buildSearchBar() {
    return Container(
      decoration: BoxDecoration(
        color: appRecentColor,
        borderRadius: BorderRadius.circular(12),
      ),
      margin: const EdgeInsets.only(left: 20, right: 20, top: 15),
      child: TextFormField(
        controller: new TextEditingController(),
        decoration: InputDecoration(
            prefixIcon: Icon(
              Icons.search,
              color: Color(0xFF98A0A6),
              size: 20,
            ),
            hintText: "what you are looking at",
            contentPadding: const EdgeInsets.only(top: 13),
            hintStyle: regularTxtStyle,
            labelStyle: regularBoldTxtStyle,
            border: InputBorder.none,
            enabledBorder: InputBorder.none,
            suffixIcon: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(
                  Icons.camera_alt,
                  color: const Color(0xFF98A0A6),
                  size: 20,
                ),
                SizedBox(width: 15),
                Icon(
                  Icons.mic,
                  color: const Color(0xFF98A0A6),
                  size: 20,
                ),
                SizedBox(width: 15),
              ],
            )),
      ),
    );
  }

  buildAppBar() {
    return Container(
      margin: const EdgeInsets.only(left: 20, right: 20, top: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
            highlightColor: Colors.white38,
            splashColor: Colors.white38,
            onTap: () {},
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 24,
                  height: 2.5,
                  color: appRecentColor,
                ),
                const SizedBox(height: 6),
                Container(
                  width: 12,
                  height: 2.5,
                  color: appRecentColor,
                ),
              ],
            ),
          ),
          Image.asset(
            'Assets/icon.png',
            height: 25,
          ),
          CircleAvatar(
            backgroundColor: appRecentColor,
            backgroundImage: NetworkImage(
              "https://thumbs.dreamstime.com/b/vector-illustration-avatar-dummy-logo-set-image-stock-isolated-object-icon-collection-137161298.jpg",
            ),
          ),
        ],
      ),
    );
  }
}

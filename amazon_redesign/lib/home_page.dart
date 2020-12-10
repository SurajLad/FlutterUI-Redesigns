import 'package:amazon_redesign/helpers/constants.dart';
import 'package:amazon_redesign/widgets/custom_buttons.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'helpers/text_styles.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            Container(
              width: Get.width,
              height: 300,
              decoration: BoxDecoration(
                color: appThemeColor,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30)),
              ),
              child: Column(
                children: [
                  buildAppBar(),
                  buildSearchBar(),
                  buildCollectionWidget(),
                ],
              ),
            ),
          ],
        ),
      ),
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
          Container(
            height: 150,
            child: ListView.builder(
              itemCount: collectionList.length,
              itemBuilder: (BuildContext context, int index) {
                return CustomButton(
                  icon: collectionList[index],
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
      margin: const EdgeInsets.only(left: 20, right: 20, top: 0),
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
            backgroundImage: AssetImage("Assets/female_02.png"),
          ),
        ],
      ),
    );
  }
}

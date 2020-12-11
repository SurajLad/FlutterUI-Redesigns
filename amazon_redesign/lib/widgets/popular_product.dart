import 'dart:ui';

import 'package:amazon_redesign/helpers/constants.dart';
import 'package:amazon_redesign/helpers/text_styles.dart';
import 'package:amazon_redesign/models/popular_product.dart';
import 'package:flutter/material.dart';

class Product extends StatelessWidget {
  final PopularProduct product;
  Product({this.product});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120,
      margin: const EdgeInsets.only(left: 12),
      padding: const EdgeInsets.fromLTRB(8, 8, 8, 4),
      decoration: BoxDecoration(
        color: appThemeColor,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Stack(
        children: [
          Container(
            alignment: Alignment.center,
            child: Image.asset(
              product.imgUrl,
              fit: BoxFit.fitWidth,
              height: 80,
            ),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  product.name,
                  style: smallBoldTxtStyle.copyWith(color: Colors.white),
                ),
                Text(
                  product.price,
                  style: smallBoldTxtStyle.copyWith(color: Colors.white),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

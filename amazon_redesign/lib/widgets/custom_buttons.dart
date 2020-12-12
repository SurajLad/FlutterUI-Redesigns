import 'package:amazon_redesign/helpers/text_styles.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String icon;
  final String name;
  CustomButton({this.icon, this.name});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 12),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: 70,
            padding: const EdgeInsets.fromLTRB(8, 15, 8, 15),
            decoration: BoxDecoration(
              color: Colors.white10,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Image.asset(icon, height: 25),
          ),
          const SizedBox(height: 10),
          Text(
            name,
            style: smallTxtStyle.copyWith(color: Colors.white),
          ),
        ],
      ),
    );
  }
}

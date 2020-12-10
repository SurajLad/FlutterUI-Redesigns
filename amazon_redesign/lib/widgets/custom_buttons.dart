import 'package:amazon_redesign/helpers/constants.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String icon;
  CustomButton({this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      child: Image.asset(
        icon,
        height: 22,
      ),
    );
  }
}

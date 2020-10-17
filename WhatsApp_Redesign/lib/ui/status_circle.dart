import 'package:flutter/material.dart';
import 'package:whatsapp_redesign_flutter/helpers/constants.dart';
import 'package:whatsapp_redesign_flutter/helpers/text_styles.dart';

class StatusCircle extends StatelessWidget {
  final int index;
  StatusCircle({this.index});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          width: 60,
          height: 60,
          margin: EdgeInsets.all(6),
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white,
              border: Border.all(color: Colors.green,width: 3)),
          child: IconButton(
            icon: Image.asset(status[index].profilePic, width: 40, height: 40),
            onPressed: () {},
          ),
        ),
        Text(status[index].name.split(' ')[0], style: smallBoldTxtStyle)
      ],
    );
  }
}

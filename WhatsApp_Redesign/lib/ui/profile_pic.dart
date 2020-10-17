import 'package:flutter/material.dart';
import 'package:whatsapp_redesign_flutter/helpers/constants.dart';

class ProfilePicture extends StatelessWidget {
  final int index;
  ProfilePicture({this.index});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 50,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.white,
          border: Border.all(
              color: recentChatUsers[index].currentStatus == 0
                  ? Colors.green
                  : Colors.grey,
              width: 2)),
      child: IconButton(
        icon: Image.asset(recentChatUsers[index].profilePic,
            width: 50, height: 50),
        onPressed: () {},
      ),
    );
  }
}

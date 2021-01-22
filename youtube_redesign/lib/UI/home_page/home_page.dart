import 'package:flutter/material.dart';
import 'package:youtube_redesign/helpers/app_constants.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appBackGroundColor,
      appBar: AppBar(
        backgroundColor: appBackGroundColor,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.fromLTRB(16, 8, 4, 4.0),
          child: CircleAvatar(
            backgroundColor: Color(0xFFA8A8B0).withOpacity(0.5),
            child: Icon(
              Icons.search,
              color: Colors.black,
              size: 22,
            ),
          ),
        ),
        actions: [
          CircleAvatar(
            backgroundColor: Color(0xFFA8A8B0).withOpacity(0.5),
            backgroundImage: NetworkImage(
              "https://demo.peepso.com/wp-content/peepso/users/13/e095072215-avatar-full.jpg",
            ),
          ),
          const SizedBox(width: 15),
        ],
      ),
      body: ListView(
        children: [],
      ),
    );
  }
}

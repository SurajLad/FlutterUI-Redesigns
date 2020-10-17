import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:whatsapp_redesign_flutter/helpers/constants.dart';
import 'package:whatsapp_redesign_flutter/helpers/text_styles.dart';
import 'package:whatsapp_redesign_flutter/models/chat_message.dart';

class ChatDetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
            size: 20,
          ),
          onPressed: () {
            Get.back();
          },
        ),
        title: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Surendra Bhati",
              style: regularTxtStyle.copyWith(
                  color: Colors.black, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 3.0),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  width: 10,
                  height: 10,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle, color: Colors.green),
                ),
                const SizedBox(width: 6.0),
                Text(
                  "Online",
                  style: smallBoldTxtStyle.copyWith(
                      color: Colors.green, fontWeight: FontWeight.normal),
                ),
              ],
            ),
          ],
        ),
        actions: [
          Container(
            margin: const EdgeInsets.fromLTRB(6, 10, 6, 6),
            decoration:
                BoxDecoration(shape: BoxShape.circle, color: Colors.grey[300]),
            child: IconButton(
              icon: Icon(
                Icons.videocam,
                color: const Color(0xFF006e65),
              ),
              onPressed: () {},
            ),
          ),
          Container(
            margin: const EdgeInsets.fromLTRB(6, 10, 6, 6),
            decoration:
                BoxDecoration(shape: BoxShape.circle, color: Colors.grey[300]),
            child: IconButton(
              icon: Icon(
                Icons.call,
                color: const Color(0xFF006e65),
              ),
              onPressed: () {},
            ),
          ),
          GestureDetector(
            child: Icon(
              Icons.more_vert,
              color: const Color(0xFF006e65),
              size: 30,
            ),
            onTap: () {},
          ),
        ],
      ),
      body: Stack(
        children: [
          Container(
            height: Get.height,
            margin: const EdgeInsets.only(top: 10),
            child: ListView.builder(
              itemBuilder: (BuildContext context, int index) {
                return chats[index].user != null
                    ? builldInconingChatMessage(message: chats[index])
                    : buildOutGoingChatMessage(message: chats[index]);
              },
              itemCount: chats.length,
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: buildBottomWidget(),
          )
        ],
      ),
    );
  }

  Widget buildOutGoingChatMessage({ChatMessage message}) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Container(
          width: Get.width / 1.55,
          height: 50,
          margin: const EdgeInsets.fromLTRB(10, 10, 10, 5),
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
              color: Colors.black12,
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(12),
                  bottomLeft: Radius.circular(12),
                  bottomRight: Radius.circular(12))),
          child: Text(message.message,
              style: smallBoldTxtStyle.copyWith(
                  color: Colors.black45, fontSize: 12)),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 18.0),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                message.time,
                style: regularTxtStyle.copyWith(
                    fontSize: 12, color: Colors.black45),
              ),
              const SizedBox(width: 6.0),
              Icon(Icons.done_all, size: 16, color: Colors.blue),
            ],
          ),
        ),
      ],
    );
  }

  Widget builldInconingChatMessage({ChatMessage message}) {
    return Row(
      children: [
        Container(
          width: 50,
          height: 50,
          margin: const EdgeInsets.only(left: 18),
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white,
              border: Border.all(color: Colors.green, width: 2)),
          child: IconButton(
            icon: Image.asset(message.user.profilePic, width: 50, height: 50),
            onPressed: () {},
          ),
        ),
        Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: Get.width / 1.55,
              height: 50,
              margin: const EdgeInsets.fromLTRB(10, 10, 10, 5),
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                  color: Colors.black12,
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(12),
                      bottomLeft: Radius.circular(12),
                      bottomRight: Radius.circular(12))),
              child: Text(message.message,
                  style: smallBoldTxtStyle.copyWith(
                      color: Colors.black45, fontSize: 12)),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 18.0),
              child: Text(
                message.time,
                style: regularTxtStyle.copyWith(
                    fontSize: 12, color: Colors.black45),
              ),
            ),
          ],
        )
      ],
    );
  }

  buildBottomWidget() {
    return Container(
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: Get.width / 1.35,
            height: 60,
            margin: const EdgeInsets.fromLTRB(10, 10, 10, 10),
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
                color: Colors.black12,
                borderRadius: BorderRadius.all(Radius.circular(18))),
            child: Row(
              children: [
                IconButton(
                    icon:
                        Icon(Icons.sentiment_satisfied, color: Colors.black45),
                    onPressed: () {}),
                Container(
                  width: Get.width / 2.55,
                  child: TextFormField(
                    decoration: InputDecoration.collapsed(
                        hintText: "Type a message..",
                        hintStyle: smallBoldTxtStyle.copyWith(
                            color: Colors.black45, fontSize: 12)),
                  ),
                ),
                GestureDetector(
                    child: Icon(Icons.attach_file, color: Colors.black45),
                    onTap: () {}),
                const SizedBox(width: 6.0),
                GestureDetector(
                    child: Icon(Icons.mic, color: Colors.black45),
                    onTap: () {}),
              ],
            ),
          ),
          Container(
              height: 60,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Color(0xFF006e65),
              ),
              child: IconButton(
                  icon: Icon(Icons.send, color: Colors.white),
                  onPressed: () {})),
        ],
      ),
    );
  }
}

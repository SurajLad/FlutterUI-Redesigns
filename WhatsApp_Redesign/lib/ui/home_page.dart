import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:whatsapp_redesign_flutter/helpers/constants.dart';
import 'package:whatsapp_redesign_flutter/helpers/text_styles.dart';
import 'package:whatsapp_redesign_flutter/ui/chat_detail.dart';
import 'package:whatsapp_redesign_flutter/ui/profile_pic.dart';
import 'package:whatsapp_redesign_flutter/ui/status_circle.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xFF006e65),
        body: Stack(
          children: [
            Container(
              width: Get.width,
              height: 175,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 18.0),
                        child: Text("whatsapp", style: regularBoldTxtStyle),
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          IconButton(
                              icon: Icon(Icons.search, color: Colors.white),
                              onPressed: null),
                          IconButton(
                              icon: Icon(Icons.more_horiz, color: Colors.white),
                              onPressed: null)
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 8.0),
                  Container(
                    width: Get.width,
                    height: 100,
                    child: buildStatusWidget(),
                  )
                ],
              ),
            ),
            Container(
              width: Get.width,
              margin: const EdgeInsets.only(top: 175),
              padding: const EdgeInsets.only(top: 5.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20)),
                color: Colors.white,
              ),
              child: ListView.builder(
                itemBuilder: (BuildContext context, int index) {
                  return ListTile(
                    onTap: () => Get.to(ChatDetail()),
                    leading: ProfilePicture(index: index),
                    title: Text(
                      recentChatUsers[index].name,
                      style: smallBoldTxtStyle.copyWith(color: Colors.black87),
                    ),
                    subtitle: Text(recentChatUsers[index].lastMessage,
                        style: smallBoldTxtStyle.copyWith(
                            color: Colors.black45, fontSize: 12)),
                    trailing: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          recentChatUsers[index].lastMsgTime,
                          style: regularTxtStyle.copyWith(
                              fontSize: 12, color: Colors.black),
                        ),
                        const SizedBox(height: 10),
                        buildTrailingWidget(index: index)
                      ],
                    ),
                  );
                },
                itemCount: recentChatUsers.length,
              ),
            ),
          ],
        ),
        floatingActionButton: Align(
          alignment: Alignment.bottomCenter,
          child: FloatingActionButton.extended(
              backgroundColor: Color(0xFF006e65),
              onPressed: null,
              label: Row(
                children: [
                  IconButton(icon: Icon(Icons.chat), onPressed: () {}),
                  IconButton(
                      icon: Icon(Icons.group), onPressed: () {}),
                  IconButton(icon: Icon(Icons.call), onPressed: () {}),
                  IconButton(icon: Icon(Icons.person_add), onPressed: () {}),
                ],
              )),
        ),
      ),
    );
  }

  ListView buildStatusWidget() {
    return ListView.builder(
      itemBuilder: (BuildContext context, int index) {
        if (index == 0) {
          return Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                width: 60,
                height: 60,
                margin: EdgeInsets.fromLTRB(18, 6, 8, 6),
                decoration: BoxDecoration(
                    shape: BoxShape.circle, color: Colors.white30),
                child: IconButton(
                  icon: Icon(
                    Icons.camera_alt,
                    color: Colors.white,
                  ),
                  onPressed: () {},
                ),
              ),
              Text("Your Status", style: smallBoldTxtStyle)
            ],
          );
        }
        index -= 1;
        return StatusCircle(index: index);
      },
      itemCount: status.length,
      scrollDirection: Axis.horizontal,
    );
  }

  buildTrailingWidget({int index}) {
    if (recentChatUsers[index].messageChip.isNewMessageArrived) {
      return Container(
          padding: const EdgeInsets.all(7),
          decoration:
              BoxDecoration(shape: BoxShape.circle, color: Colors.green),
          child: Text(recentChatUsers[index].messageChip.newMegCount.toString(),
              style: smallTxtStyle));
    } else {
      return Icon(getCheckIcon(index),
          size: 16,
          color: recentChatUsers[index].messageChip.isMessageSeen
              ? Colors.blue
              : Colors.grey);
    }
  }

  IconData getCheckIcon(int index) {
    return recentChatUsers[index].messageChip.tickCount == 1
        ? Icons.check
        : Icons.done_all;
  }
}

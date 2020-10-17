import 'package:whatsapp_redesign_flutter/models/chat_user.dart';

class ChatMessage {
  String message;
  String time;
  ChatUser user;
  MesssageStatus status;
  ChatMessage({this.message, this.time, this.user, this.status});
}

enum MesssageStatus {
  SENT,
  DELIVERED,
  READ,
}

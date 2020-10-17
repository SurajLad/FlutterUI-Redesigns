class RecentChats {
  String name;
  String profilePic;
  String lastMessage;
  int currentStatus;
  String lastMsgTime;
  MessageChip messageChip;

  RecentChats(
      {this.name,
      this.profilePic,
      this.lastMessage,
      this.currentStatus,
      this.lastMsgTime,
      this.messageChip});
}

class MessageChip {
  bool isNewMessageArrived;
  int newMegCount;
  int tickCount;
  bool isMessageSeen;
  MessageChip(
      {this.isNewMessageArrived,
      this.newMegCount,
      this.tickCount,
      this.isMessageSeen});
}

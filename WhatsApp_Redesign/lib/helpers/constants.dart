import 'package:whatsapp_redesign_flutter/models/chat_user.dart';
import 'package:whatsapp_redesign_flutter/models/chat_message.dart';
import 'package:whatsapp_redesign_flutter/models/recent_chats.dart';

var recentChatUsers = [
  RecentChats(
      name: "Surendra Bhati",
      profilePic: "assets/surendra.png",
      lastMessage: "Where are You ?",
      currentStatus: 0,
      lastMsgTime: "12:00",
      messageChip: MessageChip(
          isNewMessageArrived: true,
          newMegCount: 3,
          tickCount: 0,
          isMessageSeen: false)),
  RecentChats(
      name: "Revti Pillai",
      profilePic: "assets/Revti.png",
      lastMessage: "is the work done?",
      currentStatus: 0,
      lastMsgTime: "11:48",
      messageChip: MessageChip(
          isNewMessageArrived: false,
          newMegCount: 0,
          tickCount: 2,
          isMessageSeen: true)),
  RecentChats(
      name: "Sam Gopi",
      profilePic: "assets/Sam.png",
      lastMessage: "Where are You",
      currentStatus: 1,
      lastMsgTime: "09:53",
      messageChip: MessageChip(
          isNewMessageArrived: false,
          newMegCount: 3,
          tickCount: 1,
          isMessageSeen: false)),
  RecentChats(
      name: "Rahul Vanmali",
      profilePic: "assets/rahul.png",
      lastMessage: "Congratulations man.. 👌",
      currentStatus: 0,
      lastMsgTime: "2:00",
      messageChip: MessageChip(
          isNewMessageArrived: true,
          newMegCount: 1,
          tickCount: 0,
          isMessageSeen: false)),
  RecentChats(
      name: "Mitul Desai",
      profilePic: "assets/mitul.png",
      lastMessage: "Done",
      currentStatus: 1,
      lastMsgTime: "11:40",
      messageChip: MessageChip(
          isNewMessageArrived: false,
          newMegCount: 3,
          tickCount: 2,
          isMessageSeen: false)),
  RecentChats(
      name: "Omkar Gaikwad",
      profilePic: "assets/omkar.png",
      lastMessage: "Are you there ?",
      currentStatus: 0,
      lastMsgTime: "03:40",
      messageChip: MessageChip(
          isNewMessageArrived: false,
          newMegCount: 3,
          tickCount: 1,
          isMessageSeen: false)),
];

var status = [
  RecentChats(
      name: "Omkar Gaikwad",
      profilePic: "assets/omkar.png",
      lastMessage: "Are you there ?",
      currentStatus: 0),
  RecentChats(
      name: "Surendra Bhati",
      profilePic: "assets/surendra.png",
      lastMessage: "Done",
      currentStatus: 1),
  RecentChats(
      name: "Revti Pillai",
      profilePic: "assets/Revti.png",
      lastMessage: "is the work done?",
      currentStatus: 0),
  RecentChats(
      name: "Karan N",
      profilePic: "assets/karan.png",
      lastMessage: "is the work done?",
      currentStatus: 0),
  RecentChats(
      name: "Karan N",
      profilePic: "assets/karan.png",
      lastMessage: "is the work done?",
      currentStatus: 0),
];

var chats = [
  ChatMessage(
      message: "Just reached the destination, Got too much traffic 😅",
      time: "12:00 PM",
      user: ChatUser(
          name: "Surendra Bhati", profilePic: "assets/surendra.png", status: 0),
      status: MesssageStatus.READ),
  ChatMessage(
      message: "Give me 5-10 Min, i am on my way to reach.",
      time: "12:02 PM",
      user: null,
      status: MesssageStatus.READ),
  ChatMessage(
      message: "Ok ! Where are you right now?",
      time: "12:03 PM",
      user: ChatUser(
          name: "Surendra Bhati", profilePic: "assets/surendra.png", status: 0),
      status: MesssageStatus.READ),
  ChatMessage(
      message: "just crossed bridge",
      time: "12:05 PM",
      user: null,
      status: MesssageStatus.DELIVERED),
];

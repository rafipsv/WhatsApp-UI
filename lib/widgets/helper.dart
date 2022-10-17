import 'package:flutter/material.dart';
import 'package:whats_app_ui/screens/callscreen.dart';
import 'package:whats_app_ui/screens/chatscreen.dart';
import 'package:whats_app_ui/screens/story.dart';

class Helper {
  static List<Tab> tabs = const [
    Tab(text: "CHATS"),
    Tab(text: "STATUS"),
    Tab(text: "CALLS"),
  ];
  static List<Widget> tabView = [
    const ChatScreen(),
    const Story(),
    const CallScreen()
  ];
}

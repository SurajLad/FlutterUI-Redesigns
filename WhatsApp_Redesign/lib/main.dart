import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:whatsapp_redesign_flutter/ui/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'WhatsApp Redesign',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

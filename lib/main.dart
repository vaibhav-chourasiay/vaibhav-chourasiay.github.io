import 'package:flutter/material.dart';
import 'package:whatsapp_cv1/colors.dart';
import 'package:whatsapp_cv1/responsive/responsive_layout.dart';
import 'package:whatsapp_cv1/screens/mobile.dart';
import 'package:whatsapp_cv1/screens/web.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Whatsapp UI",
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: backgroundColor,
      ),
      home: const Responsive(
        webScreenLayout: WebScreenLayout(),
        mobileScreenLayout: MobileScreenLayout(),
      ),
    );
  }
}

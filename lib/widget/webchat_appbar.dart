import 'package:flutter/material.dart';
import 'package:whatsapp_cv1/colors.dart';
import 'package:whatsapp_cv1/info.dart';
import 'package:whatsapp_cv1/size_helper.dart';

class WebChatAppBar extends StatelessWidget {
  const WebChatAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      height: debugHeight(context) * 0.0999,
      color: webAppBarColor,
      child: Row(
        children: [
          SizedBox(
            width: debugWidth(context) * 0.01,
          ),
          CircleAvatar(
            backgroundImage: NetworkImage(info[2]["profilePic"].toString()),
            radius: 25.0,
            foregroundColor: Colors.white,
          ),
          SizedBox(
            width: debugWidth(context) * 0.0155,
          ),
          Text(
            info[2]["name"].toString(),
          ),
          const Spacer(),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search, color: Colors.grey),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.more_vert, color: Colors.grey),
          ),
        ],
      ),
    );
  }
}

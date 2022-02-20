import 'package:flutter/material.dart';
import 'package:whatsapp_cv1/info.dart';
import 'package:whatsapp_cv1/widget/message_card.dart';

import 'widget.dart';

class MobileChat extends StatelessWidget {
  const MobileChat({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          info[0]["name"].toString(),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.video_call),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.call),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.more_vert),
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              primary: false,
              itemCount: messages.length,
              itemBuilder: (context, index) {
                if (messages[index]["isMe"] != true) {
                  return OtherMessageCard(
                    message: messages[index]["text"].toString(),
                    time: messages[index]["time"].toString(),
                  );
                }
                return MyMessageCard(
                  message: messages[index]["text"].toString(),
                  time: messages[index]["time"].toString(),
                );
              },
            ),
          ),
          chatMessageBar(),
        ],
      ),
    );
  }
}

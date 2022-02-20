import 'package:flutter/material.dart';
import 'package:whatsapp_cv1/info.dart';
import 'package:whatsapp_cv1/widget/chatlist.dart';
import 'package:whatsapp_cv1/widget/message_card.dart';
import 'package:whatsapp_cv1/widget/web_appbar.dart';
import 'package:whatsapp_cv1/widget/widget.dart';

class WebScreenLayout extends StatelessWidget {
  const WebScreenLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Column(
              children: const [
                WebAppBar(),
                WebSearch(),
                Expanded(
                  child: ContactList(),
                ),
              ],
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.70,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  "assets/backgroundImage.png",
                ),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              children: [
                //chat app Bar,
                WebChatAppBar(),
                const SizedBox(
                  height: 30.0,
                ),
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
          ),
        ],
      ),
    );
  }
}

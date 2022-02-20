import 'package:flutter/material.dart';
import 'package:whatsapp_cv1/colors.dart';
import 'package:whatsapp_cv1/widget/widget.dart';

class MobileScreenLayout extends StatelessWidget {
  const MobileScreenLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0.0,
          title: const Text(
            "WhatsApp",
            style: TextStyle(
              color: Colors.grey,
            ),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.search,
                color: Colors.grey,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.more_vert,
                color: Colors.grey,
              ),
            ),
          ],
          bottom: const TabBar(
            indicatorColor: tabColor,
            labelColor: tabColor,
            indicatorWeight: 4.0,
            unselectedLabelColor: Colors.grey,
            labelStyle: TextStyle(
              fontSize: 15.0,
              fontWeight: FontWeight.bold,
            ),
            tabs: [
              Tab(
                text: "CHATS",
              ),
              Tab(
                text: "STATUS",
              ),
              Tab(
                text: "CALLS",
              ),
            ],
          ),
        ),
        body: const ContactList(),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: const Icon(Icons.comment),
          backgroundColor: tabColor,
        ),
      ),
    );
  }
}

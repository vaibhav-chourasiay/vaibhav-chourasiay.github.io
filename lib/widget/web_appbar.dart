import 'package:flutter/material.dart';
import 'package:whatsapp_cv1/colors.dart';
import 'package:whatsapp_cv1/size_helper.dart';

class WebAppBar extends StatelessWidget {
  const WebAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: debugHeight(context) * 0.0999,
      width: double.maxFinite,
      padding: const EdgeInsets.all(10.0),
      decoration: const BoxDecoration(
        color: webAppBarColor,
        border: Border(
          right: BorderSide(
            color: dividerColor,
          ),
        ),
      ),
      child: Row(
        children: [
          const CircleAvatar(
            backgroundImage: NetworkImage(
              "https://upload.wikimedia.org/wikipedia/commons/8/85/Elon_Musk_Royal_Society_%28crop1%29.jpg",
            ),
            radius: 20.0,
          ),
          const Spacer(),
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
              Icons.comment,
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
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:whatsapp_cv1/colors.dart';
import 'package:whatsapp_cv1/size_helper.dart';

class chatMessageBar extends StatelessWidget {
  bool ismobile;
  chatMessageBar({Key? key, this.ismobile = false}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: debugHeight(context) * 0.07,
      margin: const EdgeInsets.all(8.0),
      decoration: const BoxDecoration(
        color: dividerColor,
        borderRadius: BorderRadius.all(
          Radius.circular(
            20.0,
          ),
        ),
      ),
      child: Row(
        children: [
          (ismobile)
              ? IconButton(
                  icon: const Icon(
                    Icons.emoji_emotions_outlined,
                    color: Colors.grey,
                  ),
                  onPressed: () {},
                )
              : const SizedBox.shrink(),
          (ismobile)
              ? IconButton(
                  icon: const Icon(
                    Icons.attach_file_outlined,
                    color: Colors.grey,
                  ),
                  onPressed: () {},
                )
              : const SizedBox.shrink(),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              child: TextField(
                decoration: InputDecoration(
                    hintStyle: const TextStyle(
                      color: Colors.grey,
                      fontSize: 15.0,
                    ),
                    hintText: "Type a message ",
                    isDense: true,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                      borderSide: const BorderSide(
                        width: 0.0,
                        style: BorderStyle.none,
                      ),
                    ),
                    fillColor: dividerColor,
                    filled: true,
                    suffixIcon: const Icon(Icons.send)),
              ),
            ),
          ),
          IconButton(
            icon: const Icon(
              Icons.mic,
              color: Colors.grey,
            ),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}

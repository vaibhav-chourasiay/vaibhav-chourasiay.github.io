import 'package:flutter/material.dart';
import 'package:whatsapp_cv1/colors.dart';
import 'package:whatsapp_cv1/size_helper.dart';

class MyMessageCard extends StatelessWidget {
  final String message;
  final String time;
  MyMessageCard({Key? key, required this.message, required this.time})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: ConstrainedBox(
        constraints: BoxConstraints(
          maxWidth: debugWidth(context) - 45,
        ),
        child: Card(
          elevation: 1.0,
          color: messageColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          margin: const EdgeInsets.symmetric(
            horizontal: 15.0,
            vertical: 5.0,
          ),
          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                    left: 10.0, right: 30.0, top: 5.0, bottom: 20.0),
                child: Text(
                  message,
                  style: TextStyle(fontSize: 15.0),
                ),
              ),
              Positioned(
                  bottom: .4,
                  right: 10.0,
                  child: Row(
                    children: [
                      Text(
                        time,
                        style: const TextStyle(
                          fontSize: 10.0,
                          color: Colors.white38,
                        ),
                      ),
                      const SizedBox(
                        width: 5.0,
                      ),
                      const Icon(
                        Icons.done_all,
                        size: 15.0,
                        color: Colors.white38,
                      ),
                    ],
                  ))
            ],
          ),
        ),
      ),
    );
  }
}

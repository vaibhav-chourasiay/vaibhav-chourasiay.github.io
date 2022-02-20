import 'package:flutter/material.dart';
import 'package:whatsapp_cv1/colors.dart';

class WebSearch extends StatelessWidget {
  const WebSearch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      height: MediaQuery.of(context).size.height * 0.0590,
      decoration: const BoxDecoration(
        color: Colors.transparent,
      ),
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      margin: const EdgeInsets.only(top: 15.0),
      child: TextField(
        decoration: InputDecoration(
          hintStyle: const TextStyle(
            color: Colors.grey,
            fontSize: 15.0,
          ),
          hintText: "Search here or Start new chat",
          prefixIcon: const Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 18.0,
            ),
            child: Icon(
              Icons.search,
              color: Colors.grey,
            ),
          ),
          isDense: true,
          // enabledBorder: OutlineInputBorder(
          //   borderRadius: BorderRadius.circular(10.0),
          //   borderSide: const BorderSide(
          //     width: 0.0,
          //     style: BorderStyle.none,
          //   ),
          // ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
            borderSide: const BorderSide(
              width: 0.0,
              style: BorderStyle.none,
            ),
          ),
          fillColor: appBarColor,
          filled: true,
        ),
      ),
    );
  }
}

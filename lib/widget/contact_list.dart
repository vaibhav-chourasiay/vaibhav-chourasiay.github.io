import 'package:flutter/material.dart';
import 'package:whatsapp_cv1/info.dart';
import 'package:whatsapp_cv1/size_helper.dart';
import 'package:whatsapp_cv1/widget/widget.dart';

class ContactList extends StatefulWidget {
  const ContactList({Key? key}) : super(key: key);

  @override
  State<ContactList> createState() => _ContactListState();
}

class _ContactListState extends State<ContactList> {
  @override
  @override
  void initState() {
    super.initState();
    setState(() {});
  }

  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: ListView.builder(
          shrinkWrap: true,
          itemCount: info.length,
          itemBuilder: (context, index) {
            return Column(
              children: [
                InkWell(
                  onTap: () {
                    if (debugWidth(context) < 600) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => MobileChat(),
                        ),
                      );
                    }
                  },
                  child: ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage(
                        info[index]["profilePic"].toString(),
                      ),
                    ),
                    title: Text(
                      info[index]["name"].toString(),
                      style: const TextStyle(fontSize: 18.0),
                    ),
                    subtitle: Padding(
                      padding: const EdgeInsets.only(top: 5.0),
                      child: Text(
                        info[index]["message"].toString(),
                        style:
                            const TextStyle(fontSize: 15.0, color: Colors.grey),
                      ),
                    ),
                    trailing: Text(
                      info[index]["time"].toString(),
                      style:
                          const TextStyle(fontSize: 13.0, color: Colors.grey),
                    ),
                  ),
                ),
                // const SizedBox(height: 10.0),
                const Divider(
                  thickness: 0.9,
                  indent: 20.0,
                  endIndent: 20.0,
                ),
              ],
            );
          }),
    );
  }
}

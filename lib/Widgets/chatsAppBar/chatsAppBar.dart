import 'package:flutter/material.dart';
class ChatsAppBar extends StatelessWidget {
  const ChatsAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
      ListTile(
        leading: CircleAvatar(
          backgroundImage: AssetImage("assets/images/Rectangle 13.png"),
        ),


    );
  }
}

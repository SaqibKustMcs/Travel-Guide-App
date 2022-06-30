import 'package:flutter/material.dart';
class TopAppBar extends StatelessWidget {
  const TopAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18.0,vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ImageIcon(AssetImage("assets/Icons/Vector (13).png")),
          CircleAvatar(
            radius: 22,
            backgroundImage: AssetImage("assets/images/Ellipse 1.png"),
          )
        ],
      ),
    );
  }
}

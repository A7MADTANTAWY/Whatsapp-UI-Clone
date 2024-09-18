import 'package:flutter/material.dart';

class Greenicon extends StatelessWidget {
  String num;
  Greenicon({super.key, required this.num});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 9,
      backgroundColor: Color(0xff25D366),
      child: Text(
        '$num',
        style: const TextStyle(fontSize: 12),
      ),
    );
  }
}

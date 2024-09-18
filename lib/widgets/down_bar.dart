import 'package:flutter/material.dart';

class DownBar extends StatelessWidget {
  const DownBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 80,
        color: const Color(0xff06110F),
        child: const Column(
          children: [
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Icon(
                        Icons.chat,
                        color: Color(0xffffffff),
                        size: 30,
                      ),
                      Text(
                        'Chats',
                        style: TextStyle(color: Color(0xffffffff)),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Icon(
                        Icons.update_sharp,
                        color: Color(0xffffffff),
                        size: 30,
                      ),
                      Text(
                        'Update',
                        style: TextStyle(color: Color(0xffffffff)),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Icon(
                        Icons.group,
                        color: Color(0xffffffff),
                        size: 30,
                      ),
                      Text(
                        'Communities',
                        style: TextStyle(color: Color(0xffffffff)),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Icon(
                        Icons.call,
                        color: Color(0xffffffff),
                        size: 30,
                      ),
                      Text(
                        'Call',
                        style: TextStyle(color: Color(0xffffffff)),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}

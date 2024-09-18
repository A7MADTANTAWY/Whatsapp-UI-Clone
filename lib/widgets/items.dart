import 'package:flutter/material.dart';
import 'package:whatsapp/models/list_items_model.dart';

class Items extends StatelessWidget {
  final ListItemsModel iteming;
  const Items({super.key, required this.iteming});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      color: const Color(0xff0B141B),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Row(
          children: [
            CircleAvatar(
              radius: 25,
              backgroundImage: AssetImage(iteming.image),
            ),
            const SizedBox(
              width: 15,
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        iteming.name,
                        style: const TextStyle(color: Color(0xffffffff)),
                      ),
                      const Spacer(),
                      Text(
                        iteming.time ?? '',
                        style: const TextStyle(
                            color: Color(0xff848B8E), fontSize: 12),
                      ), // Add any other widgets here
                      Text(
                        iteming.unreaded ?? '',
                        style: const TextStyle(
                            color: Color(0xff25D366), fontSize: 12),
                      ), // Add any other widgets here
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          iteming.message,
                          style: const TextStyle(
                            color: Color(0xff848B8E),
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ),
                      const SizedBox(width: 10), // Adjust spacing if needed
                      iteming.greeenicon ?? SizedBox(),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

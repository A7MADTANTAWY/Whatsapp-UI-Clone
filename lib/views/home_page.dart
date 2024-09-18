// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:whatsapp/models/list_items_model.dart';
import 'package:whatsapp/widgets/down_bar.dart';
import 'package:whatsapp/widgets/greenicon.dart';
import 'package:whatsapp/widgets/items.dart';

class HomePage extends StatelessWidget {
  List<ListItemsModel> itemsmodels = [
    ListItemsModel(
        image: 'assets/4.png',
        name: 'ME',
        message:
            'https://www.google.com/search?client=firefox-b-d&sca_esv=8a135002f6381ed6&sca_upv=1&sxsrf=ADLYWILv16JkLj5b-6izX',
        time: '8:25 am'),
    ListItemsModel(
      image: 'assets/5.png',
      name: 'ADEl',
      message: 'Hello pro',
      unreaded: '12:30 am',
      greeenicon: Greenicon(
        num: '5',
      ),
    ),
    ListItemsModel(
        image: 'assets/9.jpg',
        name: 'Flutter Project',
        message: 'You: To Do App',
        time: 'Yesterday'),
    ListItemsModel(
        image: 'assets/1.jpg', name: 'Maro', message: '..', time: '6:45 pm'),
    ListItemsModel(
        image: 'assets/2.jpg',
        name: 'محمود',
        message: 'Hello pro',
        unreaded: '12:30 pm',
        greeenicon: Greenicon(
          num: '1',
        )),
    ListItemsModel(
        image: 'assets/3.jpg',
        name: 'Ali',
        message: 'في حجز كورة',
        time: '2:05'),
    ListItemsModel(
        image: 'assets/6.jpg',
        name: 'apo 3bdla',
        message: 'الاييييييجار',
        time: '1:52'),
    ListItemsModel(
        image: 'assets/7.jpg',
        name: 'ahmed salah',
        message: 'يعااااااااااام مترد',
        unreaded: '12:37 pm',
        greeenicon: Greenicon(
          num: '10',
        )),
    ListItemsModel(
        image: 'assets/8.jpg',
        name: 'Best Friends',
        message: 'في خروجة بكرة',
        time: 'Yesterday'),
  ];
  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff06110F),
      appBar: AppBar(
        shadowColor: const Color(0xff000000),
        elevation: 1,
        backgroundColor: const Color(0xff06110F),
        title: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 4),
          child: Text(
            'WhatsApp',
            style: TextStyle(
              color: Color(0xffffffff),
              fontSize: 30,
              fontStyle: FontStyle.normal,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        actions: const [
          Icon(
            Icons.camera_alt_sharp,
            color: Color(0xffffffff),
          ),
          SizedBox(
            width: 15,
          ),
          Icon(
            Icons.search,
            color: Color(0xffffffff),
          ),
          SizedBox(
            width: 15,
          ),
          Icon(
            Icons.menu,
            color: Color(0xffffffff),
          ),
          SizedBox(
            width: 15,
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: itemsmodels.length,
              itemBuilder: (context, index) {
                return Items(iteming: itemsmodels[index]);
              },
            ),
          ),
          const DownBar(),
        ],
      ),
      floatingActionButton: Stack(
        children: [
          Positioned(
            bottom: 80,
            right: 8,
            child: FloatingActionButton(
              onPressed: () {
                // Add your onPressed logic here
                print('Chat FAB Pressed');
              },
              backgroundColor: const Color(0xff25D366), // WhatsApp green color
              child: const Icon(Icons.chat, color: Colors.black),
            ),
          ),
        ],
      ),
    );
  }
}

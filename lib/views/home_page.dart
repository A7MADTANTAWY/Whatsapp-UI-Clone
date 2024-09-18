import 'package:flutter/material.dart';
import 'package:whatsapp/models/list_items_model.dart';
import 'package:whatsapp/widgets/down_bar.dart';
import 'package:whatsapp/widgets/greenicon.dart';
import 'package:whatsapp/widgets/items.dart';

class HomePage extends StatelessWidget {
  List<ListItemsModel> itemsmodels = [
    ListItemsModel(
        image: 'assets/Screenshot 2024-09-10 043654.png',
        name: 'ME',
        message:
            'https://www.google.com/search?client=firefox-b-d&sca_esv=8a135002f6381ed6&sca_upv=1&sxsrf=ADLYWILv16JkLj5b-6izX7VjRndr3sb6YQ:1726607112029&q=profile+picture&udm=2&fbs=AEQNm0Aa4sjWe7Rqy32pFwRj0UkWd8nbOJfsBGGB5IQQO6L3J_86uWOeqwdnV0yaSF-x2jo6Ttnu6iRjjgGjARfLolnBoLZZFBaghikH-Cd5D8-jDs501extcuvUVyoffiQ5rDquYr5BB7fR0vUbcc6HOfIRKuWHSQvCOjvp32EkHZihOwx56bjsiTSDWMF6Ho8RrtRGaZWI&sa=X&ved=2ahUKEwig5NDc8MqIAxWlV6QEHXccIlAQtKgLegQIDhAB&biw=1920&bih=993&dpr=1#imgrc=8lRc8BwjbJ_fGM&imgdii=jpCZyRFE07bUqM',
        time: '8:25 am'),
    ListItemsModel(
        image: 'assets/Screenshot 2024-09-18 001646.png',
        name: 'ADEl',
        message: 'Hello pro',
        unreaded: '12:30 am',
        greeenicon: Greenicon(
          num: '5',
        )),
    ListItemsModel(
        image: 'assets/istockphoto-1386479313-612x612.jpg',
        name: 'Marwa',
        message: '..',
        time: '6:45 pm'),
    ListItemsModel(
        image: 'assets/images.jpg',
        name: 'محمود',
        message: 'Hello pro',
        unreaded: '12:30 pm',
        greeenicon: Greenicon(
          num: '1',
        )),
    ListItemsModel(
        image: 'assets/aa.jpg',
        name: 'Ali',
        message: 'في حجز كورة',
        time: '2:05'),
    ListItemsModel(
        image: 'assets/ششش.jpg',
        name: 'apo 3bdla',
        message: 'الاييييييجار',
        time: '1:52'),
    ListItemsModel(
        image: 'assets/ab.jpg',
        name: 'ahmed salah',
        message: 'يعااااااااااام مترد',
        unreaded: '12:37 pm',
        greeenicon: Greenicon(
          num: '10',
        )),
    ListItemsModel(
        image: 'assets/aaaa.jpg',
        name: 'Nada',
        message: 'Hello',
        time: 'Yesterday'),
    ListItemsModel(
        image: 'assets/images.jpg',
        name: 'MOHAMED 3adel',
        message: 'عامل اي',
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

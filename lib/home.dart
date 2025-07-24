import 'package:flutter/material.dart';
import 'package:whatsapp_ui_flutter/calls.dart';
import 'package:whatsapp_ui_flutter/chats.dart';
import 'package:whatsapp_ui_flutter/communities.dart';
import 'package:whatsapp_ui_flutter/updates.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int index = 0;
  List<Widget> pages = [Chats(), Updates(), Communities(), Calls()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        onTap: (value) {
          setState(() {
            index = value;
          });
        },
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.grey,
        showUnselectedLabels: true,
        currentIndex: index,
        items: [
          BottomNavigationBarItem(
            backgroundColor: Colors.black,
            icon: Icon(Icons.message_outlined),
            label: 'Chats',
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.black,
            icon: Icon(Icons.tips_and_updates_outlined),
            label: 'Updates',
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.black,
            icon: Icon(Icons.people_alt_outlined),
            label: 'Communities',
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.black,
            icon: Icon(Icons.call_outlined),
            label: 'Calls',
          ),
        ],
      ),
      body: pages[index],
    );
  }
}

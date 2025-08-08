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

  final List<Widget> pages = [
    const Chats(),
    const Status(),
    const Community(),
    const Calls(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: pages[index],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black,
        currentIndex: index,
        onTap: (value) {
          setState(() {
            index = value;
          });
        },
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.white70,
        showUnselectedLabels: true,
        type: BottomNavigationBarType.fixed,
        selectedFontSize: 12,
        unselectedFontSize: 12,
        items: [
          BottomNavigationBarItem(
            icon: Icon(index == 0 ? Icons.message : Icons.message_outlined),
            label: 'Chats',
          ),
          BottomNavigationBarItem(
            icon: Icon(index == 1 ? Icons.update : Icons.update_outlined),
            label: 'Updates',
          ),
          BottomNavigationBarItem(
            icon: Icon(index == 2 ? Icons.groups : Icons.groups_outlined),
            label: 'Communities',
          ),
          BottomNavigationBarItem(
            icon: Icon(index == 3 ? Icons.call : Icons.call_outlined),
            label: 'Calls',
          ),
        ],
      ),
    );
  }
}

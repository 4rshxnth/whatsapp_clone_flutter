import 'package:flutter/material.dart';

class Calls extends StatelessWidget {
  const Calls({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> callList = [
      {
        "name": "John Doe",
        "subtitle": "Today, 10:00 AM",
        "icon": Icons.call_outlined,
        "iconColor": Colors.green,
        "avatar": "assets/avatar1.png",
      },
      {
        "name": "Alex Johnson",
        "subtitle": "Today, 09:45 AM",
        "icon": Icons.call_received_outlined,
        "iconColor": Colors.green,
        "avatar": "assets/avatar1.png",
      },
      {
        "name": "Jane Smith",
        "subtitle": "Today, 08:30 AM",
        "icon": Icons.call_missed_outgoing,
        "iconColor": Colors.red,
        "avatar": "assets/avatar1.png",
      },
      {
        "name": "Emily Davis",
        "subtitle": "Yesterday, 07:15 PM",
        "icon": Icons.missed_video_call_outlined,
        "iconColor": Colors.red,
        "avatar": "assets/avatar1.png",
      },
      {
        "name": "Micheal Lee",
        "subtitle": "Yesterday, 06:00 PM",
        "icon": Icons.call_outlined,
        "iconColor": Colors.white,
        "avatar": "assets/avatar1.png",
      },
      {
        "name": "Sophia Miller",
        "subtitle": "Yesterday, 04:00 PM",
        "icon": Icons.video_call_outlined,
        "iconColor": Colors.green,
        "avatar": "assets/avatar1.png",
      },
      {
        "name": "William Brown",
        "subtitle": "Yesterday, 02:30 PM",
        "icon": Icons.call_received_outlined,
        "iconColor": Colors.green,
        "avatar": "assets/avatar1.png",
      },
      {
        "name": "Qlivia Wilson",
        "subtitle": "2 August, 10:00 PM",
        "icon": Icons.call_missed_outgoing,
        "iconColor": Colors.red,
        "avatar": "assets/avatar1.png",
      },
      {
        "name": "James Anderson",
        "subtitle": "1 August, 09:00 AM",
        "icon": Icons.video_call_outlined,
        "iconColor": Colors.white,
        "avatar": "assets/avatar1.png",
      },
      {
        "name": "Nikhil",
        "subtitle": "31 July, 07:30 AM",
        "icon": Icons.call_outlined,
        "iconColor": Colors.white,
        "avatar": "assets/avatar1.png",
      },
    ];

    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
        title: const Text(
          'Calls',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        actions: const [
          Icon(Icons.qr_code_scanner_outlined),
          SizedBox(width: 15),
          Icon(Icons.search),
          SizedBox(width: 15),
          Icon(Icons.more_vert),
          SizedBox(width: 15),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.green,
        foregroundColor: Colors.white,
        child: const Icon(Icons.call_sharp),
      ),
      body: ListView(
        children: [
          const SizedBox(height: 20),
          const Padding(
            padding: EdgeInsets.only(left: 20),
            child: Text(
              'Favourites',
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(height: 5),
          const ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.green,
              child: Icon(Icons.favorite, color: Colors.black),
            ),
            title: Text(
              'Add Favourites',
              style: TextStyle(color: Colors.white),
            ),
          ),
          const SizedBox(height: 10),
          const Padding(
            padding: EdgeInsets.only(left: 20),
            child: Text(
              'Recents',
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(height: 15),
          ...callList.map((call) {
            return ListTile(
              title: Text(
                call['name'],
                style: TextStyle(
                  fontSize: 16,
                  color: call['iconColor'] == Colors.red
                      ? Colors.red
                      : Colors.white,
                  fontWeight: FontWeight.w500,
                ),
              ),
              subtitle: Text(
                call['subtitle'],
                style: const TextStyle(
                  color: Color.fromARGB(161, 158, 158, 158),
                ),
              ),
              trailing: Icon(call['icon'], color: call['iconColor']),
              leading: CircleAvatar(
                backgroundImage: AssetImage(call['avatar']),
              ),
            );
          }).toList(),
        ],
      ),
    );
  }
}

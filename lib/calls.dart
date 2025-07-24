import 'package:flutter/material.dart';

class Calls extends StatelessWidget {
  const Calls({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
        title: Text(
          'Calls',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        actions: [
          Icon(Icons.qr_code_scanner_outlined),
          SizedBox(width: 15),
          Icon(Icons.search),
          SizedBox(width: 15),
          Icon(Icons.more_vert),
          SizedBox(width: 15),
        ],
      ),
      backgroundColor: Colors.black,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.green,
        foregroundColor: Colors.white,
        child: Icon(Icons.call_sharp),
      ),
      body: ListView(
        children: [
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Text(
              'Favourites',
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(height: 5),
          ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.green,
              child: Icon(Icons.favorite, color: Colors.black),
            ),
            title: Text(
              'Add Favourites',
              style: TextStyle(color: Colors.white),
            ),
          ),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Text(
              'Recents',
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(height: 15),
          ListTile(
            title: Text(
              'User 1',
              style: TextStyle(
                fontSize: 16,
                color: Colors.white,
                fontWeight: FontWeight.w500,
              ),
            ),
            subtitle: Text(
              'Today 10:00 am',
              style: TextStyle(color: const Color.fromARGB(161, 158, 158, 158)),
            ),
            trailing: Icon(Icons.call_outlined, color: Colors.white),
            leading: CircleAvatar(
              backgroundImage: AssetImage('assets/avatar1.png'),
            ),
          ),
          ListTile(
            title: Text(
              'User 2',
              style: TextStyle(
                fontSize: 16,
                color: Colors.white,
                fontWeight: FontWeight.w500,
              ),
            ),
            subtitle: Text(
              'Today 10:00 am',
              style: TextStyle(color: const Color.fromARGB(161, 158, 158, 158)),
            ),
            trailing: Icon(Icons.call_outlined, color: Colors.white),
            leading: CircleAvatar(
              backgroundImage: AssetImage('assets/avatar1.png'),
            ),
          ),
          ListTile(
            title: Text(
              'User 3',
              style: TextStyle(
                fontSize: 16,
                color: Colors.red,
                fontWeight: FontWeight.w500,
              ),
            ),
            subtitle: Text(
              'Today 10:00 am',
              style: TextStyle(color: const Color.fromARGB(161, 158, 158, 158)),
            ),
            trailing: Icon(Icons.missed_video_call_outlined, color: Colors.red),
            leading: CircleAvatar(
              backgroundImage: AssetImage('assets/avatar1.png'),
            ),
          ),
          ListTile(
            title: Text(
              'User 4',
              style: TextStyle(
                fontSize: 16,
                color: Colors.white,
                fontWeight: FontWeight.w500,
              ),
            ),
            subtitle: Text(
              'Today 10:00 am',
              style: TextStyle(color: const Color.fromARGB(161, 158, 158, 158)),
            ),
            trailing: Icon(Icons.call_received_outlined, color: Colors.green),
            leading: CircleAvatar(
              backgroundImage: AssetImage('assets/avatar1.png'),
            ),
          ),
          ListTile(
            title: Text(
              'User 5',
              style: TextStyle(
                fontSize: 16,
                color: Colors.red,
                fontWeight: FontWeight.w500,
              ),
            ),
            subtitle: Text(
              'Today 10:00 am',
              style: TextStyle(color: const Color.fromARGB(161, 158, 158, 158)),
            ),
            trailing: Icon(Icons.call_missed_outgoing, color: Colors.red),
            leading: CircleAvatar(
              backgroundImage: AssetImage('assets/avatar1.png'),
            ),
          ),
          ListTile(
            title: Text(
              'User 2',
              style: TextStyle(
                fontSize: 16,
                color: Colors.white,
                fontWeight: FontWeight.w500,
              ),
            ),
            subtitle: Text(
              'Yesterday 10:00 am',
              style: TextStyle(color: const Color.fromARGB(161, 158, 158, 158)),
            ),
            trailing: Icon(
              Icons.missed_video_call_outlined,
              color: Colors.white,
            ),
            leading: CircleAvatar(
              backgroundImage: AssetImage('assets/avatar1.png'),
            ),
          ),
        ],
      ),
    );
  }
}

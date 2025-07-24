import 'package:flutter/material.dart';

class Chats extends StatelessWidget {
  const Chats({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
        title: Text(
          'Whatsapp',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        actions: [
          Icon(Icons.qr_code),
          SizedBox(width: 15),
          Icon(Icons.camera_alt_outlined),
          SizedBox(width: 15),
          Icon(Icons.more_vert),
          SizedBox(width: 15),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.green,
        foregroundColor: Colors.white,
        child: Icon(Icons.message_outlined),
      ),
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: ListView(
          children: [
            TextField(
              decoration: InputDecoration(
                hintText: 'Search',
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(50),
                ),
                prefixIcon: Icon(
                  Icons.search,
                  color: const Color.fromARGB(202, 95, 95, 95),
                ),
                fillColor: const Color.fromARGB(202, 39, 39, 39),
                filled: true,
              ),
            ),
            ListTile(
              title: Text('User 1'),
              subtitle: Text('Hi'),
              trailing: Text('10.45 am'),
              leading: CircleAvatar(
                backgroundImage: AssetImage('assets/avatar1.png'),
              ),
            ),
            ListTile(
              title: Text('User 2'),
              subtitle: Text('Hey there!'),
              trailing: Text('11.45 pm'),
              leading: CircleAvatar(
                backgroundImage: AssetImage('assets/avatar1.png'),
              ),
            ),
            ListTile(
              title: Text('User 3'),
              subtitle: Text('How are you?'),
              trailing: Text('6.00 am'),
              leading: CircleAvatar(
                backgroundImage: AssetImage('assets/avatar1.png'),
              ),
            ),
            ListTile(
              title: Text('User 4'),
              subtitle: Text('You are awsome'),
              trailing: Text('12.00 pm'),
              leading: CircleAvatar(
                backgroundImage: AssetImage('assets/avatar1.png'),
              ),
            ),
            ListTile(
              title: Text('User 5'),
              subtitle: Text('Heyy buddy!'),
              trailing: Text('9.00 pm'),
              leading: CircleAvatar(
                backgroundImage: AssetImage('assets/avatar1.png'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

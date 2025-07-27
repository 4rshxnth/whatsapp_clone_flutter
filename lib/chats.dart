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
          SizedBox(width: 20),
          Icon(Icons.camera_alt_outlined),
          SizedBox(width: 20),
          Icon(Icons.more_vert),
          SizedBox(width: 20),
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
                hintText: 'Ask Meta AI or Search',
                hintStyle: TextStyle(
                  color: const Color.fromARGB(202, 95, 95, 95),
                  fontSize: 18,
                ),
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(50),
                ),
                prefixIcon: Icon(
                  Icons.search,
                  color: const Color.fromARGB(202, 95, 95, 95),
                ),
                fillColor: const Color.fromARGB(207, 47, 47, 47),
                filled: true,
              ),
            ),
            SizedBox(height: 10),
            ListTile(
              title: Text(
                'John Doe',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 19,
                ),
              ),
              subtitle: Text(
                'Good morning',
                style: TextStyle(
                  color: Colors.white60,
                  fontWeight: FontWeight.w600,
                  fontSize: 15,
                ),
              ),
              trailing: Text(
                '6.00 am',
                style: TextStyle(
                  color: Colors.white60,
                  fontWeight: FontWeight.w600,
                  fontSize: 12,
                ),
              ),
              leading: CircleAvatar(
                backgroundImage: AssetImage('assets/avatar1.png'),
              ),
            ),
            ListTile(
              title: Text(
                'Alex Johnson',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 19,
                ),
              ),
              subtitle: Text(
                'Hi! What’s new today?',
                style: TextStyle(
                  color: Colors.white60,
                  fontWeight: FontWeight.w600,
                  fontSize: 15,
                ),
              ),
              trailing: Text(
                '9.30 pm',
                style: TextStyle(
                  color: Colors.white60,
                  fontWeight: FontWeight.w600,
                  fontSize: 12,
                ),
              ),
              leading: CircleAvatar(
                backgroundImage: AssetImage('assets/avatar1.png'),
              ),
            ),
            ListTile(
              title: Text(
                'Jane Smith',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 19,
                ),
              ),
              subtitle: Text(
                'How are you?',
                style: TextStyle(
                  color: Colors.white60,
                  fontWeight: FontWeight.w600,
                  fontSize: 15,
                ),
              ),
              trailing: Text(
                '9.30 am',
                style: TextStyle(
                  color: Colors.white60,
                  fontWeight: FontWeight.w600,
                  fontSize: 12,
                ),
              ),
              leading: CircleAvatar(
                backgroundImage: AssetImage('assets/avatar1.png'),
              ),
            ),
            ListTile(
              title: Text(
                'Emily Davis',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 19,
                ),
              ),
              subtitle: Text(
                'Hey there!',
                style: TextStyle(
                  color: Colors.white60,
                  fontWeight: FontWeight.w600,
                  fontSize: 15,
                ),
              ),
              trailing: Text(
                '2.30 pm',
                style: TextStyle(
                  color: Colors.white60,
                  fontWeight: FontWeight.w600,
                  fontSize: 12,
                ),
              ),
              leading: CircleAvatar(
                backgroundImage: AssetImage('assets/avatar1.png'),
              ),
            ),
            ListTile(
              title: Text(
                'Michael Lee',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 19,
                ),
              ),
              subtitle: Text(
                'Heyy buddy!',
                style: TextStyle(
                  color: Colors.white60,
                  fontWeight: FontWeight.w600,
                  fontSize: 15,
                ),
              ),
              trailing: Text(
                '8.27 pm',
                style: TextStyle(
                  color: Colors.white60,
                  fontWeight: FontWeight.w600,
                  fontSize: 12,
                ),
              ),
              leading: CircleAvatar(
                backgroundImage: AssetImage('assets/avatar1.png'),
              ),
            ),
            ListTile(
              title: Text(
                'Sarah Kim',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 19,
                ),
              ),
              subtitle: Text(
                'Hey! Ping me when free.',
                style: TextStyle(
                  color: Colors.white60,
                  fontWeight: FontWeight.w600,
                  fontSize: 15,
                ),
              ),
              trailing: Text(
                'Yesterday',
                style: TextStyle(
                  color: Colors.white60,
                  fontWeight: FontWeight.w600,
                  fontSize: 12,
                ),
              ),
              leading: CircleAvatar(
                backgroundImage: AssetImage('assets/avatar1.png'),
              ),
            ),
            ListTile(
              title: Text(
                'David Clark',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 19,
                ),
              ),
              subtitle: Text(
                'Hi! Sent the file just now.',
                style: TextStyle(
                  color: Colors.white60,
                  fontWeight: FontWeight.w600,
                  fontSize: 15,
                ),
              ),
              trailing: Text(
                'Yesterday',
                style: TextStyle(
                  color: Colors.white60,
                  fontWeight: FontWeight.w600,
                  fontSize: 12,
                ),
              ),
              leading: CircleAvatar(
                backgroundImage: AssetImage('assets/avatar1.png'),
              ),
            ),
            ListTile(
              title: Text(
                'Emma Taylor',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 19,
                ),
              ),
              subtitle: Text(
                'Hello! Let’s catch up later.',
                style: TextStyle(
                  color: Colors.white60,
                  fontWeight: FontWeight.w600,
                  fontSize: 15,
                ),
              ),
              trailing: Text(
                '26/07/25',
                style: TextStyle(
                  color: Colors.white60,
                  fontWeight: FontWeight.w600,
                  fontSize: 12,
                ),
              ),
              leading: CircleAvatar(
                backgroundImage: AssetImage('assets/avatar1.png'),
              ),
            ),
            ListTile(
              title: Text(
                'Daniel Wright',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 19,
                ),
              ),
              subtitle: Text(
                'Hey! You there?',
                style: TextStyle(
                  color: Colors.white60,
                  fontWeight: FontWeight.w600,
                  fontSize: 15,
                ),
              ),
              trailing: Text(
                '24/07/25',
                style: TextStyle(
                  color: Colors.white60,
                  fontWeight: FontWeight.w600,
                  fontSize: 12,
                ),
              ),
              leading: CircleAvatar(
                backgroundImage: AssetImage('assets/avatar1.png'),
              ),
            ),
            ListTile(
              title: Text(
                'Olivia Brown',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 19,
                ),
              ),
              subtitle: Text(
                'Hi! Meeting got postponed',
                style: TextStyle(
                  color: Colors.white60,
                  fontWeight: FontWeight.w600,
                  fontSize: 15,
                ),
              ),
              trailing: Text(
                '23/07/25',
                style: TextStyle(
                  color: Colors.white60,
                  fontWeight: FontWeight.w600,
                  fontSize: 12,
                ),
              ),
              leading: CircleAvatar(
                backgroundImage: AssetImage('assets/avatar1.png'),
              ),
            ),
            ListTile(
              title: Text(
                'James Miller',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 19,
                ),
              ),
              subtitle: Text(
                'Yo! Game night?',
                style: TextStyle(
                  color: Colors.white60,
                  fontWeight: FontWeight.w600,
                  fontSize: 15,
                ),
              ),
              trailing: Text(
                '20/07/25',
                style: TextStyle(
                  color: Colors.white60,
                  fontWeight: FontWeight.w600,
                  fontSize: 12,
                ),
              ),
              leading: CircleAvatar(
                backgroundImage: AssetImage('assets/avatar1.png'),
              ),
            ),
            ListTile(
              title: Text(
                'Sophia Wilson',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 19,
                ),
              ),
              subtitle: Text(
                'Heyy! Just got your message',
                style: TextStyle(
                  color: Colors.white60,
                  fontWeight: FontWeight.w600,
                  fontSize: 15,
                ),
              ),
              trailing: Text(
                '15/07/25',
                style: TextStyle(
                  color: Colors.white60,
                  fontWeight: FontWeight.w600,
                  fontSize: 12,
                ),
              ),
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

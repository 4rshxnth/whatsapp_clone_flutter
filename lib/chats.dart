import 'package:flutter/material.dart';

class Chats extends StatelessWidget {
  const Chats({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> chatList = [
      {
        "name": "John Doe",
        "message": "Good morning!",
        "time": "6:00 am",
        "unread": 2,
        "seen": false,
      },
      {
        "name": "Alex Johnson",
        "message": "Meeting rescheduled.",
        "time": "8:15 am",
        "unread": 0,
        "seen": true,
      },
      {
        "name": "Jane Smith",
        "message": "Let's catch up later.",
        "time": "9:30 am",
        "unread": 5,
        "seen": false,
      },
      {
        "name": "Emily Davis",
        "message": "Thanks for the help!",
        "time": "10:45 am",
        "unread": 0,
        "seen": true,
      },
      {
        "name": "Michael Lee",
        "message": "Send me the document.",
        "time": "11:50 am",
        "unread": 1,
        "seen": false,
      },
      {
        "name": "Sophia Miller",
        "message": "See you soon 👋",
        "time": "1:15 pm",
        "unread": 3,
        "seen": false,
      },
      {
        "name": "William Brown",
        "message": "Call me when you're free.",
        "time": "2:40 pm",
        "unread": 0,
        "seen": true,
      },
      {
        "name": "Olivia Wilson",
        "message": "Happy Birthday 🎉",
        "time": "4:00 pm",
        "unread": 7,
        "seen": false,
      },
      {
        "name": "James Anderson",
        "message": "Sure, will do.",
        "time": "5:30 pm",
        "unread": 0,
        "seen": true,
      },
      {
        "name": "Ava Thomas",
        "message": "Just reached home.",
        "time": "9:45 pm",
        "unread": 4,
        "seen": false,
      },
    ];

    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
        title: const Text(
          'WhatsApp',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        actions: const [
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
        child: const Icon(Icons.message_outlined),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: ListView(
          children: [
            TextField(
              decoration: InputDecoration(
                hintText: 'Ask Meta AI or Search',
                hintStyle: const TextStyle(
                  color: Color.fromARGB(202, 95, 95, 95),
                  fontSize: 16,
                ),
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(50),
                ),
                prefixIcon: const Icon(
                  Icons.search,
                  color: Color.fromARGB(202, 95, 95, 95),
                ),
                fillColor: const Color.fromARGB(207, 47, 47, 47),
                filled: true,
              ),
            ),
            const SizedBox(height: 10),
            ...chatList.map((chat) => _buildChatTile(chat)).toList(),
          ],
        ),
      ),
    );
  }

  Widget _buildChatTile(Map<String, dynamic> chat) {
    return ListTile(
      contentPadding: const EdgeInsets.symmetric(vertical: 4),
      leading: Container(
        padding: const EdgeInsets.all(2),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(
            color: chat["seen"] ? Colors.grey : Colors.green,
            width: 3,
          ),
        ),
        child: const CircleAvatar(
          radius: 26,
          backgroundImage: AssetImage('assets/avatar1.png'),
        ),
      ),
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Text(
              chat["name"],
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w600,
                fontSize: 17,
              ),
              overflow: TextOverflow.ellipsis,
            ),
          ),
          Text(
            chat["time"],
            style: TextStyle(
              color: chat["unread"] > 0 ? Colors.green : Colors.white60,
              fontSize: 13,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
      subtitle: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Text(
              chat["message"],
              style: const TextStyle(color: Colors.white60, fontSize: 15),
              overflow: TextOverflow.ellipsis,
            ),
          ),
          if (chat["unread"] > 0)
            Container(
              margin: const EdgeInsets.only(left: 8),
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
              decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Text(
                chat["unread"].toString(),
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 13,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
        ],
      ),
      onTap: () {},
    );
  }
}

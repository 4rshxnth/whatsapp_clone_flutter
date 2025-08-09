import 'package:flutter/material.dart';

class Status extends StatelessWidget {
  const Status({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
        title: const Text(
          'Status',
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
        actions: [const Icon(Icons.more_vert), const SizedBox(width: 20)],
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            heroTag: 'edit',
            mini: true,
            backgroundColor: const Color.fromARGB(255, 47, 47, 47),
            foregroundColor: Colors.white,
            onPressed: () {},
            child: const Icon(Icons.edit),
          ),
          const SizedBox(height: 12),
          FloatingActionButton(
            heroTag: 'camera',
            backgroundColor: Colors.green,
            foregroundColor: Colors.white,
            onPressed: () {},
            child: const Icon(Icons.camera_alt),
          ),
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 12),
        children: [
          ListTile(
            leading: Stack(
              children: [
                const CircleAvatar(
                  radius: 28,
                  backgroundImage: AssetImage('assets/avatar1.png'),
                ),
                Positioned(
                  bottom: 0,
                  right: 0,
                  child: Container(
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.green,
                    ),
                    padding: const EdgeInsets.all(2),
                    child: const Icon(Icons.add, size: 18, color: Colors.white),
                  ),
                ),
              ],
            ),
            title: const Text(
              'My Status',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            subtitle: const Text(
              'Tap to add status update',
              style: TextStyle(color: Colors.white60),
            ),
          ),
          const SizedBox(height: 10),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 8),
            child: Text(
              'Recent updates',
              style: TextStyle(
                color: Colors.white60,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

          _buildStatusTile("John Doe", "Today, 10:00 AM", false),
          _buildStatusTile("Alex Johnson", "Today, 9:00 AM", false),
          _buildStatusTile("Jane Smith", "Yesterday, 8:30 PM", false),

          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 8),
            child: Text(
              'Viewed updates',
              style: TextStyle(
                color: Colors.white60,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

          _buildStatusTile("Emily Davis", "Yesterday, 5:00 PM", true),
          _buildStatusTile("Michael Lee", "Yesterday, 1:15 PM", true),
          _buildStatusTile("Sarah Kim", "Yesterday, 9:45 AM", true),
        ],
      ),
    );
  }

  Widget _buildStatusTile(String name, String time, bool seen) {
    return ListTile(
      leading: Container(
        padding: const EdgeInsets.all(2),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(
            color: seen ? Colors.grey : Colors.green,
            width: 3,
          ),
        ),
        child: const CircleAvatar(
          radius: 26,
          backgroundImage: AssetImage('assets/avatar1.png'),
        ),
      ),
      title: Text(
        name,
        style: const TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
      ),
      subtitle: Text(time, style: const TextStyle(color: Colors.white60)),
      onTap: () {},
    );
  }
}

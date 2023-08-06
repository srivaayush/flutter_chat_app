
import 'package:flutter/material.dart';

import 'chat_list_item.dart';

class ChatListScreen extends StatelessWidget {
  const ChatListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Chatting App'),
      ),
      body: ListView.builder(
        itemCount: 10, // Replace this with the actual number of chat items
        itemBuilder: (context, index) {
          return const ChatListItem(); // Create ChatListItem widget to represent a chat item
        },
      ),
    );
  }
}

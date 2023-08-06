
import 'package:flutter/material.dart';
import 'individual_chat_screen.dart';

class ChatListItem extends StatelessWidget {
  const ChatListItem({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const CircleAvatar(
        // Replace with the contact's profile picture
         backgroundImage: NetworkImage('https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=687&q=80'),
      ),
      title: const Text('Contact Name'), // Replace with the contact's name after removing const
      subtitle: const Text('Last message here'), // Replace with the last message after removing const
      trailing: const Text('12:34 PM'), // Replace with the timestamp after removing const
      onTap: () {
        // Implement navigation to individual chat screen here
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) =>  const IndividualChatScreen(),
          ),
        );
      },
    );
  }
}

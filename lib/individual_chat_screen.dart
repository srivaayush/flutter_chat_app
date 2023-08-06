import 'package:flutter/material.dart';
import 'package:flutter_chat_app/chat_bubble.dart';
import 'package:flutter_chat_app/message_input_field.dart';
import 'package:intl/intl.dart';

class IndividualChatScreen extends StatefulWidget {
  const IndividualChatScreen({super.key});

  @override
  _IndividualChatScreenState createState() => _IndividualChatScreenState();
}

class _IndividualChatScreenState extends State<IndividualChatScreen> {
  final TextEditingController _messageController = TextEditingController();

  final List<Map<String, dynamic>> _messages = [
    {
      'message': 'Hey, how are you?',
      'isMe': false,
      'time': '10:00 AM',
    },
    {
      'message': 'I am doing great!',
      'isMe': true,
      'time': '10:05 AM',
    },
    // Add more messages here
  ];
  String getCurrentTime() {
    DateTime now = DateTime.now();

    // Define the desired time format
    const String timeFormat = "h:mm a"; // "10:00 p.m."

    // Format the current time using the desired format
    String formattedTime = DateFormat(timeFormat).format(now);
    return formattedTime;
  }

  void _sendMessage() {
    String message = _messageController.text.trim();
    if (message.isNotEmpty) {
      // Handle message sending logic here
      setState(() {
        _messages.add({
          'message': message,
          'isMe': true,
          'time': getCurrentTime(),
        });
      });
      _messageController.clear();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Replace with the contact's name after replacing const
        title: const Text('Contact Name'),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              reverse: false, // To display the latest messages at the bottom
              itemCount: _messages.length,
              itemBuilder: (context, index) {
                Map<String, dynamic> messageData = _messages[index];
                return ChatBubble(
                  message: messageData['message'],
                  isMe: messageData['isMe'],
                  time: messageData['time'],
                );
              },
            ),
          ),
          MessageInputField(
            controller: _messageController,
            onSend: _sendMessage,
          ),
        ],
      ),
    );
  }
}

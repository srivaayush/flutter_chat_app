import 'package:flutter/material.dart';
import 'chat_list_screen.dart';

class FlutterChatApp extends StatelessWidget {
  const FlutterChatApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(
        useMaterial3: true,
      ),
      home: const ChatListScreen(),
    );
  }
}

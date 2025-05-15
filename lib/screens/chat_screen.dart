import 'package:flutter/material.dart';
import 'package:whatsapp_clone_ui/widgets/chat_input_bar.dart';

class ChatScreen extends StatelessWidget {
  final String name;
  final String imageAvatar;
  final String message;
  const ChatScreen(
      {super.key,
      required this.name,
      required this.imageAvatar,
      required this.message});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xFF2D3D47),
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back_ios, color: Colors.white),
          ),
          titleSpacing: 0,
          title: Row(
            children: [
              CircleAvatar(
                backgroundImage: NetworkImage(
                  imageAvatar,
                ),
                radius: 18,
              ),
              const SizedBox(width: 8),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const Text(
                    "online",
                    style: TextStyle(
                      color: Colors.white70,
                      fontSize: 13,
                    ),
                  ),
                ],
              ),
            ],
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.videocam, color: Colors.white),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.call, color: Colors.white),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.more_vert, color: Colors.white),
            ),
          ],
        ),
        body: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/background-chat.jpg'),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            children: [
              Expanded(
                child: ListView(
                  reverse: false,
                  padding: const EdgeInsets.all(8),
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 12, vertical: 8),
                        margin: const EdgeInsets.symmetric(vertical: 4),
                        decoration: BoxDecoration(
                          color: const Color(0xFF005C4B),
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: Text(
                          message,
                          style: const TextStyle(
                              color: Colors.white, fontSize: 16),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const ChatInputBar(),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class ChatInputBar extends StatelessWidget {
  const ChatInputBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(16),
      child: Row(
        children: [
          Expanded(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              decoration: BoxDecoration(
                color: Colors.grey.shade600,
                borderRadius: BorderRadius.circular(30),
              ),
              child: const Row(
                children: [
                  Icon(Icons.add, color: Colors.white60),
                  SizedBox(width: 8),
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Type a message',
                        border: InputBorder.none,
                        hintStyle: TextStyle(color: Colors.white60),
                      ),
                      style: TextStyle(color: Colors.white),
                      cursorColor: Colors.white,
                    ),
                  ),
                  Icon(Icons.emoji_emotions, color: Colors.white60),
                  SizedBox(width: 8),
                  Icon(Icons.camera_alt, color: Colors.white60),
                ],
              ),
            ),
          ),
          const SizedBox(width: 10),
          Container(
            width: 45,
            height: 45,
            decoration: const BoxDecoration(
              color: Colors.green,
              shape: BoxShape.circle,
            ),
            child: IconButton(
              color: Colors.black,
              icon: const Icon(Icons.keyboard_voice),
              onPressed: () {},
            ),
          ),
        ],
      ),
    );
  }
}

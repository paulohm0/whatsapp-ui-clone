import 'package:flutter/material.dart';

import '../mocks/chat_list_mocked.dart';

class ChatTile extends StatelessWidget {
  final ChatItem chatItem;
  const ChatTile({super.key, required this.chatItem});

  @override
  Widget build(BuildContext context) {
    return const ListTile();
  }
}

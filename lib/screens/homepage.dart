import 'package:flutter/material.dart';
import 'package:whatsapp_clone_ui/mocks/chat_list_mocked.dart';
import 'package:whatsapp_clone_ui/widgets/app_bar.dart';
import 'package:whatsapp_clone_ui/widgets/chat_tile.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  final ChatListMocked chatListMocked = ChatListMocked();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: const PreferredSize(
          preferredSize: Size.fromHeight(120),
          child: AppBarWidget(),
        ),
        body: Container(
          decoration: const BoxDecoration(color: Color(0xFF121B22)),
          child: ListView.builder(
            itemCount: chatListMocked.chats.length,
            itemBuilder: (context, index) {
              final chat = chatListMocked.chats[index];
              return ChatTile(chat: chatListMocked.chats[index]);
            },
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          backgroundColor: Colors.green,
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}

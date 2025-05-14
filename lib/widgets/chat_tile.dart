import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:whatsapp_clone_ui/screens/chat_screen.dart';

class ChatTile extends StatelessWidget {
  final Map<String, String> chat;
  const ChatTile({super.key, required this.chat});

  @override
  Widget build(BuildContext context) {
    String formatTime(String time24) {
      final format = DateFormat.jm(); // Formato de 12 horas (AM/PM)
      final parsedTime = DateFormat(
        "HH:mm",
      ).parse(time24); // Converte para DateTime
      return format.format(parsedTime); // Formata para 12h com AM/PM
    }

    return Material(
      color: const Color(0xFF121B22),
      borderRadius: BorderRadius.circular(7.0),
      child: InkWell(
        borderRadius: BorderRadius.circular(12.0),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) {
                return ChatScreen(
                  name: chat["name"]!,
                  imageAvatar: chat["photo"]!,
                  message: chat["message"]!,
                );
              },
            ),
          );
        },
        child: SizedBox(
          width: 100,
          height: 80,
          child: Center(
            child: ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.grey[700],
                backgroundImage:
                    chat["photo"] != null ? NetworkImage(chat["photo"]!) : null,
                child: chat["photo"] == null
                    ? const Icon(Icons.person, color: Colors.white)
                    : null,
              ),
              title: Text(
                chat["name"] ?? 'Desconhecido',
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                ),
              ),
              subtitle: Text(
                chat["message"] ?? '',
                style: const TextStyle(
                  color: Colors.white54,
                  fontWeight: FontWeight.w700,
                ),
              ),
              trailing: Text(
                formatTime(chat["time"]!) ?? '--:--',
                style: const TextStyle(color: Colors.white54, fontSize: 12),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

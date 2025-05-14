import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:whatsapp_clone_ui/widgets/appbar.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  final List<Map<String, String>> chats = [
    {
      "name": "Saulo",
      "photo":
          "https://www.agendartecultura.com.br/wp-content/uploads/2022/12/meneson.jpg",
      "message": "Oi, tudo bem?",
      "time": "12:30",
    },
    {
      "name": "Lucas",
      "photo":
          "https://engenharia360.com/wp-content/uploads/2019/05/esta-pessoa-nao-existe-engenharia360-4.png.webp",
      "message": "Vamos jogar?",
      "time": "11:15",
    },
    {
      "name": "Daniel",
      "photo": "https://tm.ibxk.com.br/2019/02/17/17124052466014.jpg",
      "message": "Enviei os documentos.",
      "time": "10:50",
    },
  ];

  String formatTime(String time24) {
    final format = DateFormat.jm(); // Formato de 12 horas (AM/PM)
    final parsedTime = DateFormat(
      "HH:mm",
    ).parse(time24); // Converte para DateTime
    return format.format(parsedTime); // Formata para 12h com AM/PM
  }

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
            itemCount: chats.length,
            itemBuilder: (context, index) {
              final chat = chats[index];
              return ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.grey[700],
                  backgroundImage: chat["photo"] != null
                      ? NetworkImage(chat["photo"]!)
                      : null,
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
              );
            },
          ),
        ),
      ),
    );
  }
}

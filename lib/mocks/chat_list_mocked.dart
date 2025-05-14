class ChatItem {
  final String name;
  final String message;
  final String time;
  final String avatar;
  final bool isOnline;
  final bool isMissedCall;
  final int unreadCount;

  ChatItem({
    required this.name,
    required this.message,
    required this.time,
    required this.avatar,
    this.isOnline = false,
    this.isMissedCall = false,
    this.unreadCount = 0,
  });
}

final List<ChatItem> chats = [
  ChatItem(
    name: "Jane",
    message: "Oi, como vai o dia?",
    time: "3:14 pm",
    avatar:
        "https://miro.medium.com/v2/resize:fit:1400/1*g09N-jl7JtVjVZGcd-vL2g.jpeg",
    isOnline: true,
  ),
  ChatItem(
    name: "Devon",
    message: "📖 Achei esse livro, pensei em você",
    time: "3:14 pm",
    avatar:
        "https://miro.medium.com/v2/resize:fit:1400/1*g09N-jl7JtVjVZGcd-vL2g.jpeg",
    unreadCount: 1,
  ),
  ChatItem(
    name: "Dori",
    message: "❌ Chamada de voz perdida",
    time: "3:14 pm",
    avatar:
        "https://miro.medium.com/v2/resize:fit:1400/1*g09N-jl7JtVjVZGcd-vL2g.jpeg",
    isMissedCall: true,
  ),
  ChatItem(
    name: "Trunk",
    message: "🎬 Vi esse filme, me lembrou você.",
    time: "3:14 pm",
    avatar:
        "https://miro.medium.com/v2/resize:fit:1400/1*g09N-jl7JtVjVZGcd-vL2g.jpeg",
  ),
  ChatItem(
    name: "Baracus",
    message: "🔗 www.whatsapp.com",
    time: "3:14 pm",
    avatar:
        "https://miro.medium.com/v2/resize:fit:1400/1*g09N-jl7JtVjVZGcd-vL2g.jpeg",
    isOnline: true,
  ),
  ChatItem(
    name: "Willie",
    message: "🎤 0:15",
    time: "3:14 pm",
    avatar:
        "https://miro.medium.com/v2/resize:fit:1400/1*g09N-jl7JtVjVZGcd-vL2g.jpeg",
  ),
  ChatItem(
    name: "Murdock",
    message: "To precisando de ti, me liga",
    time: "3:14 pm",
    avatar:
        "https://miro.medium.com/v2/resize:fit:1400/1*g09N-jl7JtVjVZGcd-vL2g.jpeg",
  ),
  ChatItem(
    name: "Dariwl",
    message: "eae",
    time: "3:14 pm",
    avatar:
        "https://miro.medium.com/v2/resize:fit:1400/1*g09N-jl7JtVjVZGcd-vL2g.jpeg",
  ),
  ChatItem(
    name: "Scarfan",
    message: "vamos la",
    time: "3:14 pm",
    avatar:
        "https://miro.medium.com/v2/resize:fit:1400/1*g09N-jl7JtVjVZGcd-vL2g.jpeg",
  ),
];

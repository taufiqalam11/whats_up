import 'package:flutter/material.dart';
import 'package:whats_up/CustomUi/custom_card.dart';
import 'package:whats_up/Model/chat_model.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({super.key});

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  List<ChatModel> chats = [
    ChatModel(
        name: "Asad",
        icon: "person.svg",
        isGroup: false,
        time: "4:00",
        currentMessage: "Hi this is Asad Raja"),
    ChatModel(
        name: "Naukhez",
        icon: "person.svg",
        isGroup: false,
        time: "5:00",
        currentMessage: "Hi this is Naukhez"),
    ChatModel(
        name: "Nargis",
        icon: "person.svg",
        isGroup: false,
        time: "5:00",
        currentMessage: "Hi this is Nargis"),
    ChatModel(
        name: "Safiya",
        icon: "person.svg",
        isGroup: false,
        time: "5:00",
        currentMessage: "Safiya"),
    ChatModel(
        name: "Arsin",
        icon: "person.svg",
        isGroup: false,
        time: "6:00",
        currentMessage: "Hi this is Arsin"),
    ChatModel(
        name: "Shinat",
        icon: "person.svg",
        isGroup: false,
        time: "4:00",
        currentMessage: "Hi this is Shinat"),
    ChatModel(
        name: "Kashis",
        icon: "person.svg",
        isGroup: false,
        time: "4:00",
        currentMessage: "Hi this is Kashis"),
    ChatModel(
        name: "Tution class",
        icon: "groups.svg",
        isGroup: true,
        time: "11:00",
        currentMessage: "Hi this is group chat"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Theme.of(context).colorScheme.secondary,
        child: Icon(
          Icons.chat,
        ),
      ),
      body: ListView.builder(
        itemCount: chats.length,
        itemBuilder: (context, index) => CustomCard(chatModel: chats[index]),
      ),
    );
  }
}

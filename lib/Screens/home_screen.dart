import 'package:flutter/material.dart';
import 'package:whats_up/Pages/chat_page.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  TabController? _controller;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = TabController(length: 4, vsync: this, initialIndex: 1);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.secondary,
        title: Text(
          "WhatsUp",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.search,
              )),
          PopupMenuButton<String>(
            onSelected: (value) {
              print(value);
            },
            itemBuilder: (BuildContext context) {
              return [
                PopupMenuItem(
                  value: "New Group",
                  child: Text("New Group"),
                ),
                PopupMenuItem(
                  value: "New Broadcast",
                  child: Text("New Broadcast"),
                ),
                PopupMenuItem(
                  value: "WhatsUp Web",
                  child: Text("WhatsUp Web"),
                ),
                PopupMenuItem(
                  value: "Started messages",
                  child: Text("Started messages"),
                ),
                PopupMenuItem(
                  value: "Setting",
                  child: Text("Setting"),
                ),
              ];
            },
          )
        ],
        bottom: TabBar(controller: _controller, tabs: [
          Tab(
            icon: Icon(Icons.camera_alt),
          ),
          Tab(text: "CHATS"),
          Tab(text: "STATUS"),
          Tab(text: "CALLS"),
        ]),
      ),
      body: TabBarView(controller: _controller, children: [
        Text("Camera"),
        ChatPage(),
        Text("Status"),
        Text("Calls"),
      ]),
    );
  }
}

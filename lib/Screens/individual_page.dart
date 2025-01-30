import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:whats_up/Model/chat_model.dart';

class IndividualPage extends StatefulWidget {
  const IndividualPage({super.key, required this.chatModel});
  final ChatModel chatModel;
  @override
  State<IndividualPage> createState() => _IndividualPageState();
}

class _IndividualPageState extends State<IndividualPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 181, 227, 250),
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.secondary,
        leadingWidth: 70,
        titleSpacing: 0,
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.arrow_back,
                color: Colors.white,
                size: 24,
              ),
              CircleAvatar(
                  radius: 20,
                  backgroundColor: Colors.blueGrey,
                  // ignore: deprecated_member_use
                  child: SvgPicture.asset(
                    widget.chatModel.isGroup
                        ? "assets/groups.svg"
                        : "assets/person.svg",
                    // ignore: deprecated_member_use
                    color: Colors.white,
                    height: 20,
                    width: 20,
                  )),
            ],
          ),
        ),
        title: InkWell(
          onTap: () {},
          child: Container(
            margin: EdgeInsets.all(5),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.chatModel.name,
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                Text(
                  "Last seen today at 12:00",
                  style: TextStyle(
                      fontSize: 12,
                      color: const Color.fromARGB(255, 202, 199, 199)),
                )
              ],
            ),
          ),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.videocam,
                color: Colors.white,
              )),
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.call,
                color: Colors.white,
              )),
          PopupMenuButton<String>(
            color: Colors.white,
            onSelected: (value) {},
            itemBuilder: (BuildContext context) {
              return [
                PopupMenuItem(
                  value: "View Contact",
                  child: Text("View Contact"),
                ),
                PopupMenuItem(
                  value: "Media,Links and Docs",
                  child: Text("Media,Links and Docs"),
                ),
                PopupMenuItem(
                  value: "WhatsUp Web",
                  child: Text("WhatsUp Web"),
                ),
                PopupMenuItem(
                  value: "Search",
                  child: Text("Search"),
                ),
                PopupMenuItem(
                  value: "Mute Notification",
                  child: Text("Mute Notification"),
                ),
                PopupMenuItem(
                  value: "Wallpaper",
                  child: Text("Wallpaper"),
                ),
              ];
            },
          )
        ],
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Stack(
          children: [
            ListView(),
            Align(
              alignment: Alignment.bottomCenter,
              child: Row(
                children: [
                  Container(
                      width: MediaQuery.of(context).size.width - 55,
                      child: Card(
                          margin: EdgeInsets.only(left: 2, right: 2, bottom: 8),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25)),
                          child: TextFormField(
                            keyboardType: TextInputType.multiline,
                            maxLines: 5,
                            minLines: 1,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "Type a message..",
                              prefixIcon: IconButton(
                                  onPressed: () {},
                                  icon: Icon(Icons.emoji_emotions,
                                      color: const Color.fromARGB(
                                          255, 11, 102, 82))),
                              suffixIcon: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  IconButton(
                                      onPressed: () {},
                                      icon: Icon(Icons.attach_file,
                                          color: const Color.fromARGB(
                                              255, 11, 102, 82))),
                                  IconButton(
                                      onPressed: () {},
                                      icon: Icon(Icons.camera_alt,
                                          color: const Color.fromARGB(
                                              255, 11, 102, 82)))
                                ],
                              ),
                              contentPadding: EdgeInsets.all(5),
                            ),
                          ))),
                  Padding(
                    padding:
                        const EdgeInsets.only(bottom: 8, right: 2, left: 2),
                    child: CircleAvatar(
                      backgroundColor: const Color.fromARGB(255, 11, 102, 82),
                      radius: 22,
                      child:
                          IconButton(onPressed: () {}, icon: Icon(Icons.mic)),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

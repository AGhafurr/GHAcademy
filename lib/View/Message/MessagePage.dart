import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_mobile/Controller/DatabaseController.dart';

class MessagePage extends StatefulWidget {
  const MessagePage({Key? key}) : super(key: key);

  @override
  State<MessagePage> createState() => _MessagePageState();
}

class _MessagePageState extends State<MessagePage> {
  final DatabaseController _databaseController = Get.find<DatabaseController>();

  @override
  void initState() {
    super.initState();
    _databaseController.getMessages();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ChatWidget(),
    );
  }
}

class ChatWidget extends StatelessWidget {
  final DatabaseController _databaseController = Get.find<DatabaseController>();

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return ListView.builder(
        padding: EdgeInsets.all(8.0),
        itemCount: _databaseController.messages.value.length,
        itemBuilder: (context, index) {
          final message = _databaseController.messages.value[index];
          final name = message['name'];
          final messageText = message['message'];
          final isMe =
              true; // Atur kondisi untuk menentukan apakah pesan dari pengguna saat ini

          return buildBubbleMessage(
            isMe: isMe,
            name: name,
            message: messageText,
          );
        },
      );
    });
  }

  Widget buildBubbleMessage({
    required bool isMe,
    required String name,
    required String message,
  }) {
    return Container(
      padding: EdgeInsets.all(13.0),
      margin: EdgeInsets.symmetric(vertical: 8.0),
      decoration: BoxDecoration(
        color: isMe ? Color(0xff03AEC6) : Colors.grey,
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: TextStyle(
                    fontSize: 17,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Vollkorn',
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  message,
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.white,
                    fontFamily: 'Vollkorn',
                  ),
                ),
              ],
            ),
          ),
          Row(
            children: [
              IconButton(
                icon: const Icon(Icons.edit_note_outlined),
                iconSize: 36,
                onPressed: () {},
                color: Color(0xffFDFDFD),
              ),
              IconButton(
                icon: const Icon(Icons.delete_outline_rounded),
                iconSize: 36,
                onPressed: () {},
                color: Color(0xffFDFDFD),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

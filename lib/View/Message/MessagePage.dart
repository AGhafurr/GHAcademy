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
          final documentId = message['\$id'];

          return buildBubbleMessage(
            name: name,
            message: messageText,
            documentId: documentId,
          );
        },
      );
    });
  }

  Widget buildBubbleMessage({
    required String name,
    required String message,
    required String documentId,
  }) {
    return Container(
      padding: EdgeInsets.all(13.0),
      margin: EdgeInsets.symmetric(vertical: 8.0),
      decoration: BoxDecoration(
        color: Color(0xff03AEC6),
        borderRadius: BorderRadius.circular(5.0),
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
                onPressed: () {
                  _showEditDialog(name, message, documentId);
                },
                color: Color(0xff01294D),
              ),
              IconButton(
                icon: const Icon(Icons.delete_outline_rounded),
                iconSize: 36,
                onPressed: () {
                  _deleteMessage(documentId);
                },
                color: Color(0xff01294D),
              ),
            ],
          ),
        ],
      ),
    );
  }

  void _showEditDialog(String name, String message, String documentId) {
    Get.defaultDialog(
      titlePadding: EdgeInsets.all(20),
      title: 'Edit Message',
      titleStyle: TextStyle(
        fontSize: 25,
        fontFamily: 'Unlock',
      ),
      content: Column(
        children: [
          TextFormField(
            initialValue: name,
            style: TextStyle(
              fontSize: 15,
              fontFamily: 'Vollkorn',
            ),
            onChanged: (value) {
              name = value;
            },
            decoration: InputDecoration(
              labelText: "Name",
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(5)),
            ),
          ),
          SizedBox(height: 15),
          TextFormField(
            initialValue: message,
            style: TextStyle(
              fontSize: 15,
              fontFamily: 'Vollkorn',
            ),
            onChanged: (value) {
              message = value;
            },
            decoration: InputDecoration(
              labelText: "Message",
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(5)),
            ),
          ),
        ],
      ),
      actions: [
        ElevatedButton(
          style: ButtonStyle(
              backgroundColor:
                  MaterialStateProperty.all<Color>(Color(0xff01294D)),
              side: MaterialStateProperty.all(
                  BorderSide(color: Color(0xff03AEC6), width: 1)),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5))),
              padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                  EdgeInsets.symmetric(horizontal: 25, vertical: 10)),
              elevation: MaterialStateProperty.all<double>(5)),
          onPressed: () {
            _databaseController.updateMessage(documentId, {
              'name': name,
              'message': message,
            });
            Get.back();
          },
          child: Icon(
            Icons.verified_outlined,
            color: Colors.white,
          ),
        ),
      ],
    );
  }

  void _deleteMessage(String documentId) {
    _databaseController.deleteMessage(documentId);
  }
}

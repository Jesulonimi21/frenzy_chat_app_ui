import 'package:flutter/material.dart';
import 'chat_message.dart';
class ChatScreen extends StatefulWidget {
  State createState() {
    return ChatScreenState();
  }
}

class ChatScreenState extends State<ChatScreen> {
  List<ChatMessage> _message=<ChatMessage>[];
  TextEditingController _textController = new TextEditingController();

  void _handleSubmitted(String text) {
    _textController.clear();
    ChatMessage chatMessage=new ChatMessage(text);
    setState(() {
      _message.insert(0, chatMessage);
    });
  }

  Widget _textComposer() {
    return IconTheme(
      data:IconThemeData(
        color:Colors.blue
      ),
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 8.0),
        child: Row(children: <Widget>[
          Flexible(
            child: TextField(
              decoration: InputDecoration.collapsed(hintText: "enter a number"),
              controller: _textController,
              onSubmitted: _handleSubmitted,
            ),
          ),
          Container(
            child: IconButton(icon: Icon(Icons.send), onPressed: ()=>_handleSubmitted(_textController.text)),
          )
        ]),
      ),
    );
  }

  Widget build(BuildContext context) {
    return Column(
        children:<Widget>[
          Flexible(
            child: ListView.builder(
              padding: EdgeInsets.all(8.0),
              reverse: true,
              itemBuilder: (BuildContext context,int index){
                return _message[index];
              },
              itemCount: _message.length,
            ),
          ),
          Divider(
            height: 1.0,
          ),
          Container(
            decoration: BoxDecoration(color: Theme.of(context).cardColor),
            child: _textComposer(),
          )
        ]
    );
  }
}

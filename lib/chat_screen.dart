import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:frenzy_app/chat_message.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {

  final List <ChatMessage> _message = <ChatMessage> [];
final TextEditingController _textEditingController = TextEditingController();


  void onHandleSubmitted(String text){
    _textEditingController.clear();
    ChatMessage message = ChatMessage(
      text: text,
    );
    setState(() {
      _message.insert(0, message);

      
    });
  }

  Widget _textComposer(){
    return IconTheme(
      data: IconThemeData(
        color: Colors.blueGrey,
      ),
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 8.0),
        child: Row(
          children: [
            Flexible(
              child: TextFormField( 
              decoration: InputDecoration.collapsed(
                hintText: "Send Message",
                ),
                 controller: _textEditingController,
                 onFieldSubmitted: onHandleSubmitted,  
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 4.0),
              child: IconButton(
                icon: Icon(Icons.send),
                onPressed: (){
                  onHandleSubmitted(_textEditingController.text);
                },
              ),
            )
          ],
        ),
      ),
    );
  }


  @override
  Widget build(BuildContext context) {
    return Column(
        children: [
          Flexible(
            child: ListView.builder(
              reverse: true,
              itemBuilder: (_, int index)=>_message[index],
              itemCount: _message.length,
            ),
          ),
          Divider(height: 1.0,),
          Container(
            decoration: BoxDecoration(
              color: Theme.of(context).cardColor,
            ),
            child: _textComposer(),
          )
        ],
      );
   
  }
}
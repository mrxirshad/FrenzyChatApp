
import 'package:flutter/material.dart';


class ChatMessage extends StatelessWidget{
  final String _name = "Md Irshad";
  final String text;

  ChatMessage({required this.text});

  @override
  Widget build(BuildContext context) {
      return Container(
        margin: EdgeInsets.symmetric(vertical: 10.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(right: 16.0),
              child: CircleAvatar(
                child: Text(_name[0]),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(_name,style: TextStyle(fontSize: 16.0),),
                Container(
                  margin: EdgeInsets.only(top: 4.0),
                  child: Text(text),
                )

              ],
            )
          ],
        ),
      );
  }
}
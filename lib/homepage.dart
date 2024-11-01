import 'package:flutter/material.dart';
import 'package:frenzy_app/chat_screen.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Frenzy Chat", style: TextStyle(color: Colors.white),
        
        ),
        backgroundColor: Colors.blueGrey,
        centerTitle: true,
      
      ),
      body: const ChatScreen(),

    );
  }
}
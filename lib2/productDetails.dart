import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter_app/models/chat.dart';
class chatdetails extends StatelessWidget {
Chat chat;
chatdetails(this.chat);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        leading: CircleAvatar(
            radius: 60,
            backgroundImage: AssetImage(chat.url)),
        title: Text(chat.name

        ),

        ),
      body: Container(
          child: Column(
            children: [
              Text(chat.write),
            ],
          ),
      ),
      );
  }
}

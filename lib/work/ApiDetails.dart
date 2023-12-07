import 'package:flutter_app/work/Api.dart';
import 'dart:html';
import 'package:flutter/material.dart';
class ApiDet extends StatelessWidget {
  Map api={};
  ApiDet(this.api);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
      ),
      body: Container(
        child: Column(
          children: [
            Text(api['postId'].toString()),
            Text(api['id'].toString()),
            Text(api['name']),
            Text(api['email']),
            Text(api['body']),
          ],
        ),
      ),
    );
  }
}

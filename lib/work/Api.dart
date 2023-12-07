import 'dart:convert';
import 'dart:io';
import 'package:flutter_app/main1.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/work/ApiDetails.dart';
import 'package:http/http.dart' as http;
class Api extends StatefulWidget {
  @override
  _ApiState createState() => _ApiState();
}

class _ApiState extends State<Api> {
  List<Map>apid=[];
  List Apis=[];
  @override
  void initState() {
    super.initState();
    getData();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
      ),
      body: (Apis.length<=0)?
      Center(
        child: CircularProgressIndicator(
          backgroundColor: Colors.grey,
        ),
      )
          :ListView(
              children: [
              for(int i=0;i<Apis.length;i++)
                InkWell(
                  onTap: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (c) {
                          return ApiDet(Apis[i]);
                        })
                    );
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children:[
                     Text(Apis[i]['id'].toString()),
                      Text(Apis[i]['name']),
                  ]

                  ),
                )
        ],
      ),

    );
  }

  getData()
  async{
    http.Response rs= await http.get(Uri.parse('https://jsonplaceholder.typicode.com/comments'));
    Apis=jsonDecode(rs.body);
    setState(() {

    });
    print(Apis[0]);
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/models/chat.dart';
import 'package:flutter_app/productDetails.dart';
import 'package:flutter_app/projs/circle.dart';
class Rev extends StatelessWidget {
String email ='';
String password ='';
Rev(this.email,this.password);
  List<Chat>chat=[
    Chat(
    url:'assets/images/ss.jpg',
    name:'Bavley',
      write:'hello',
    last:'yesterday',
    ),
    Chat(
      url:'assets/images/ss.jpg',
      name:'Bavley',
      write:'hello',
      last:'yesterday',
    ),
    Chat(
      url:'assets/images/ss.jpg',
      name:'Bavley',
      write:'hello',
      last:'yesterday',
    ),
    Chat(
      url:'assets/images/ss.jpg',
      name:'Bavley',
      write:'hello',
      last:'yesterday',
   ),
    Chat(
      url:'assets/images/ss.jpg',
      name:'Bavley',
      write:'hello',
      last:'yesterday',
    ),
    Chat(
      url:'assets/images/ss.jpg',
      name:'Bavley',
      write:'hello',
      last:'yesterday',
    ),
    Chat(
      url:'assets/images/ss.jpg',
      name:'Bavley',
      write:'hello',
      last:'yesterday',
    ),
    Chat(
      url:'assets/images/ss.jpg',
      name:'Bavley',
      write:'hello',
      last:'yesterday',
    ),
    Chat(
      url:'assets/images/ss.jpg',
      name:'Bavley',
      write:'hello',
      last:'yesterday',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: Drawer(
          child: ListView(
            children: [
              UserAccountsDrawerHeader(
                  decoration: BoxDecoration(
                    color: Colors.lightGreen,
                  ),
                  currentAccountPicture: CircleAvatar(
                    backgroundImage: AssetImage('assets/images/ss.jpg'),
                  ),
                  accountName: Text(email),
                  accountEmail: Text(password)),
              ListTile(
                title: Text('Settings'),
                trailing: Icon(Icons.settings),
              ),
              ListTile(
                title: Text('Devices'),
                trailing: Icon(Icons.device_unknown),
              ),
              ListTile(
                title: Text('LogOut'),
                trailing: Icon(Icons.logout),
              ),
            ],
          ),
        ),
      // drawer: Drawer(
      //   child: ListView(
      //     children: [
      //       UserAccountsDrawerHeader(
      //         currentAccountPicture: CircleAvatar(
      //             backgroundImage: AssetImage('assets/images/pepsi.jpeg')
      //         ),
      //           accountName: Text(email),
      //           accountEmail: Text(password),
      //
      //       ),
      //       ListTile(
      //         title: Text('My Account'),
      //         trailing: Icon(Icons.account_circle_rounded),
      //       ),
      //       ListTile(
      //         title: Text('Help'),
      //         trailing: Icon(Icons.help_outline_rounded),
      //       ),
      //       ListTile(
      //         title: Text('Privacy And Policy'),
      //         trailing: Icon(Icons.privacy_tip_rounded),
      //       ),
      //       ListTile(
      //         title: Text('Log Out'),
      //         trailing: Icon(Icons.logout),
      //       ),
      //     ],
      //   ),
      // ),
      appBar: AppBar(
        backgroundColor: Colors.green,

        centerTitle: true,
        title: Text("MY APP",
            style: TextStyle(
            fontWeight: FontWeight.bold,
              fontSize: 40,
              color : Colors.white,
        ),
        ),
      ),
    //   body: Container(
    //         child: ListView(
    //               children: [
    //                 for(int i=0;i<chat.length;i++)
    //                   Card(
    //                     shadowColor: Colors.black38,
    //                     shape: RoundedRectangleBorder(
    //                       borderRadius: BorderRadius.circular(25),
    //                     ),
    //                     child: ListTile(
    //                       onTap: (){
    //                         Navigator.of(context).push(
    //                           MaterialPageRoute(builder: (c){
    //                             return chatdetails(chat[i]);
    //                           })
    //                         );
    //                       },
    //                         title: Text(chat[i].name),
    //                       subtitle: Text(chat[i].write),
    //                       leading: CircleAvatar(
    //                         backgroundImage: AssetImage(chat[i].url),
    //                       ),
    //                       trailing: Text(chat[i].last),
    //                     ),
    //                   ),
    //               ],
    //         ),
    //
    // ),
        body: DefaultTabController(
            length: 3,
            child: Scaffold(
                appBar:  AppBar(
                  backgroundColor: Colors.lightGreen,
                  title: TabBar(
                    labelColor: Colors.black,
                    tabs: [
                      Text('Chats'),
                      Text('Updates'),
                      Text('Calls'),
                    ],
                  ),
                ),
                body: TabBarView(
                  children: [
                    Tab(
                      child: ListView(
                        children: [
                          for (int i = 0; i < chat.length; i++)
                            Card(
                              child: ListTile(
                                onTap: (){},
                                leading: CircleAvatar(
                                  backgroundImage: AssetImage(chat[i].url),
                                ),
                                title: Text(chat[i].name),

                              ),
                            )
                        ],
                      ),
                    ),
                    Tab(
                      child: ListView(
                        children: [
                          for (int i = 0; i < chat.length; i++)
                            Card(
                              child: ListTile(
                                onTap: (){},
                                leading: CircleAvatar(
                                  backgroundImage: AssetImage(chat[i].url),
                                ),
                                title: Text(chat[i].name),

                              ),
                            )
                        ],
                      ),
                    ),
                    Tab(
                      child: ListView(
                        children: [
                          for (int i = 0; i < chat.length; i++)
                            Card(
                              child: ListTile(
                                onTap: (){},
                                leading: CircleAvatar(
                                  backgroundImage: AssetImage(chat[i].url),
                                ),
                                title: Text(chat[i].name),

                              ),
                            )
                        ],
                      ),
                    ),
                  ],
                )
            )
        )
    );
  }
}

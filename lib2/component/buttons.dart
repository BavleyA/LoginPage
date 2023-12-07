import 'package:flutter/material.dart';
Widget btn(String n, {event}){
 return
   MaterialButton (onPressed: (){},
     color: Colors.black,
     child: Text(n,
       style: TextStyle(
         fontSize: 30,
         fontWeight: FontWeight.bold,
         color: Colors.white,
       ),
     ),
   );
  }


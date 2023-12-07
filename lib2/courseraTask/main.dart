import 'package:flutter/material.dart';

void main() {
  runApp(FirstApp());
}

class FirstApp extends StatefulWidget {

  @override
  _FirstAppState createState() => _FirstAppState();
}

class _FirstAppState extends State<FirstApp> {
  int i=0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Calculator'),
          centerTitle: true,
          leading: Icon(Icons.calculate_outlined),
          backgroundColor: Colors.indigoAccent,
          /*actions: [
            /*InkWell(
              onTap: (){
                print('ok1');
              },
              child: Icon(
                Icons.login,
                color: Colors.white,
              ),
            ),
            SizedBox(width: 20,),
            InkWell(
              onTap: (){
                print('ok2');
              },
              child: Icon(
                Icons.favorite,
                color:Colors.white,
              ),
            )*/
          ],*/
        ),
        body: Container(
          child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text('Calculator App',
                style: TextStyle(
                  fontSize: 40,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text( '$i',
                style: TextStyle(
                  fontSize: 40,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  MaterialButton (onPressed: (){
                    setState(() {
                    });
                  },
                    color: Colors.black,
                    child: Text('1',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                    ),
                  ),
                  MaterialButton (onPressed: (){
                    setState(() {
                    });
                  },
                    color: Colors.black,
                    child: Text('2',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  MaterialButton (onPressed: (){
                    setState(() {
                    });
                  },
                    color: Colors.black,
                    child: Text('3',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  MaterialButton (onPressed: (){
                    setState(() {
                    });
                  },
                    color: Colors.black,
                    child: Text('4',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  MaterialButton (onPressed: (){
                    setState(() {
                    });
                  },
                    color: Colors.black,
                    child: Text('5',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  MaterialButton (onPressed: (){
                    setState(() {
                    });
                  },
                    color: Colors.black,
                    child: Text('6',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  MaterialButton (onPressed: (){
                    setState(() {
                    });
                  },
                    color: Colors.black,
                    child: Text('7',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  MaterialButton (onPressed: (){
                    setState(() {
                    });
                  },
                    color: Colors.black,
                    child: Text('8',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  MaterialButton (onPressed: (){
                    setState(() {
                    });
                  },
                    color: Colors.black,
                    child: Text('9',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  MaterialButton (onPressed: (){
                    setState(() {
                    });
                  },
                    color: Colors.black,
                    child: Text('*',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  MaterialButton (onPressed: (){
                    setState(() {
                    });
                  },
                    color: Colors.black,
                    child: Text('0',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  MaterialButton (onPressed: (){
                    setState(() {
                    });
                  },
                    color: Colors.black,
                    child: Text('+',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  MaterialButton (onPressed: (){
                    setState(() {
                    });
                  },
                    color: Colors.black,
                    child: Text('-',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  MaterialButton (onPressed: (){
                    setState(() {
                    });
                  },
                    color: Colors.black,
                    child: Text('/',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  MaterialButton (onPressed: (){
                    setState(() {
                    });
                  },
                    color: Colors.black,
                    child: Text('C',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  MaterialButton (onPressed: (){
                    setState(() {
                    });
                  },
                    color: Colors.black,
                    child: Text('=',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
             /* MaterialButton(onPressed: (){
                i=0;
                setState(() {

                });
              },
                color: Colors.black,
                child: Text('R',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),*/
            ],
          ),
        ),
      ),
    );
  }
}

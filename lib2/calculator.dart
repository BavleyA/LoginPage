import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_app/component/buttons.dart';
import 'package:math_expressions/math_expressions.dart';
import 'dart:math';
void main(){
  runApp(Calculator());
}
class Calculator extends StatefulWidget{
  @override
  _CalculatorState createState() => _CalculatorState();
}
class _CalculatorState extends State<Calculator> {
  String result='';
  int output = 0;
  @override
  Widget build (BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: Text("Calculator" , style: TextStyle(fontStyle: FontStyle.italic),),
            leading: Icon(Icons.calculate_outlined),
          ),
          body: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text('$result'
                  , style: TextStyle(fontWeight: FontWeight.bold , fontSize: 40),
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children:
                  [
                    MaterialButton (onPressed: (){
                      setState(() {
                          result+='1';
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
                        result+='2';
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
                        result+='3';
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
                  children:
                  [
                    MaterialButton (onPressed: (){
                      setState(() {
                        result+='4';
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
                        result+='5';
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
                        result+='6';
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
                  children:
                  [
                    MaterialButton (onPressed: (){
                      setState(() {
                        result+='7';
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
                        result+='8';
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
                        result+='9';
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
                  children:
                  [
                    MaterialButton (onPressed: (){
                      setState(() {
                        result+='*';
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
                        result+='0';
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
                        result+='+';
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
                  children:
                  [
                    MaterialButton (onPressed: (){
                      setState(() {
                        result+='-';
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
                        result+='/';
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
                        result='0';
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
                        try {
                          Parser p=new Parser();
                          Expression exp = p.parse(result);
                          ContextModel cm = ContextModel();
                          output = exp.evaluate(EvaluationType.REAL, cm);
                          result = output.toString();
                         /*output = int.parse(result);
                          result = output.toString();

                          */
                        } catch (e) {
                          result = "Error";
                        }
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
              ],
            ),
          )
      )
      ,
    );

  }
}
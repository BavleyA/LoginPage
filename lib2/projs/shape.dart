import 'dart:io';
abstract class Shape{
   late String _color;
   late bool _filled;
   shape({String color='',bool filled=false}){
     this._color=color;
     this._filled=filled;
   }
   void setColor(String co){
     this._color=co;
   }
   void setFilled(bool f){
     this._filled=f;
   }
   String getColor(){
     return _color;
   }
   bool getFilled(){
     return _filled;
   }
   double getArea();
   double getPerimeter();
   void print(){
    stdout.write('color : $_color , filled : $_filled ,');
   }
}
import 'dart:io';
import 'shape.dart';
class Rectangle extends Shape{
  double _width=0,_length=0;
  Rectangle({ double width=0, double length=0,String color = '', bool filled = false}){
    setColor(color);
    setFilled(filled);
    this._width=width;
    this._length=length;
  }
  void setWidth (double width){
    this._width=width;
  }
  void setLength(double length){
    this._length=length;
  }
  double getWidth(){
    return _width;
  }
  double getLength(){
    return _length;
  }
  @override
  double getArea() {
    return _length*_width;
  }
  @override
  double getPerimeter() {
    return (_length+_width)*2;
  }
  @override
  void print() {
    super.print();
    stdout.write(' Width : $_width , length : $_length');
  }
}
import 'dart:io';
import 'shape.dart';
class Circle extends Shape {
  late double r = 0;
  Circle({double radius = 0, String color = '', bool filled = false}){
    this.r = radius;
    setColor(color);
    setFilled(filled);
  }
  setRadius(double rad){
    this.r=rad;
  }
  double getRadius(){
    return r;
  }
  @override
  double getArea() {
    return 3.14*r*r;
  }

  @override
  double getPerimeter() {
    return 2*3.14*r;
  }
  @override
  void print(){
    super.print();
    stdout.write(' radius $r ');
  }
}

import 'package:flutter_app/courses.dart';
import 'dart:io';
class Teacher extends Courses{
  late String _name , _email , _passWord;
  late List<Courses> _listOfCourses=[];
  Teacher({String name ="" , String email ="" , String passWord =""}){
    this._name=name;
    this._email=email;
    this._passWord=passWord;
  }
  void setTeacher(){
    print('name');
    _name=stdin.readLineSync()!;
    print('email');
    _email=stdin.readLineSync()!;
    print('password');
    _passWord=stdin.readLineSync()!;
  }

  get passWord => _passWord;
  set passWord(value) {
    _passWord = value;
  }
  get email => _email;
  set email(value) {
    _email = value;
  }
  get name => _name;
  set name(value) {
    _name = value;
  }
  void addNewCourse(Courses cou){
    Courses cou =Courses();
    print('course name');
    cou.courseName=stdin.readLineSync()!;
    print('course description');
    cou.description=stdin.readLineSync()!;
    _listOfCourses.add(cou);
  }
  void deleteCourse(String course){
    if(_listOfCourses.contains(course)){
      _listOfCourses.remove(course);
    }
  }
  void showDataOfCourses (){
    _listOfCourses.forEach((element) {
      print('Name :${element.courseName} , Description : ${element.description} ');
    });
  }

}
import 'package:flutter_app/teacher.dart';
import 'dart:io';
class Coursera extends Teacher{
  late List<Teacher> listOfTeachers = [];

  void registerTeachers(String teacherName,String teacherEmail, String teacherPassword){
    Teacher t = Teacher(name: teacherName,email: teacherEmail,passWord: teacherPassword);
    listOfTeachers.add(t);
  }

  /*void login (String teacherName , String teacherPassWord){
    for(int i=0;i<listOfTeachers.length;i++) {
      if (listOfTeachers[i].name==teacherName && listOfTeachers[i].passWord==teacherPassWord) {
        print("Login Successful!");
        break;
      } else {
        print("Incorrect email or password.");
      }
    }

  }*/


  void  login(String email, String password, List<Teacher> listOfTeachers ) {
    for (var teacher in listOfTeachers) {
      if (teacher.email == email && teacher.passWord == password) {
        print("Login successful.");
        //return teacher;
      }
    }
    print("Login failed. Invalid email or password.");
    //return null;
  }

  void showDataOfTeachers (){
    listOfTeachers.forEach((element) {
      print('Name : ${element.name} , Email : ${element.email} , Password : ${element.passWord}');
    });
  }

}

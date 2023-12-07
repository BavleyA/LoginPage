import 'dart:io';

import 'package:flutter_app/coursera.dart';
import 'package:flutter_app/courses.dart';
import 'package:flutter_app/lectures.dart';
import 'package:flutter_app/sheets.dart';
import 'package:flutter_app/teacher.dart';
main(){
  String ss;
  Coursera c=Coursera();
  Teacher t=Teacher();
  Courses cou=Courses();
  List<Teacher> listOfTeachers = [];
  do{
    Coursera c=Coursera();
    print('choose operation you want to do\n 1-register teacher 2-login teacher\n '
        '3-add Course\n 4:add Lecture \n 5:add Sheet \n '
        '6:remove Course \n 7:remove Lecture \n 8:remove Sheet\n'
        ' 9: Show all Teachers \n 10: Show all Courses');
    int choice=int.parse(stdin.readLineSync()!);
    switch(choice) {
      case 1:
        {
          print("enter teacher's name ");
          String name = stdin.readLineSync()!;
          print("enter teacher's email ");
          String email = stdin.readLineSync()!;
          print("enter teacher's password ");
          String password = stdin.readLineSync()!;
          c.registerTeachers(name, email, password);
          listOfTeachers.add(c);
          break;
        }
      case 2:
        {
          print("enter teacher's email");
          String e = stdin.readLineSync()!;
          print("enter teacher's password");
          String pass = stdin.readLineSync()!;
          c.login(e, pass,listOfTeachers);
          break;
        }
      case 3:
        {
          print('enter number of courses you want to add');
          int n = int.parse(stdin.readLineSync()!);
          for (int j = 0; j < n; j++) {
            print('enter name of the Course ${j + 1}');
            String nameOfCourse = stdin.readLineSync()!;
            print('enter description of the Course ${j + 1}');
            String descriptionOfCourse = stdin.readLineSync()!;
            Courses courses = Courses(courseName: nameOfCourse, description: descriptionOfCourse);
            t.addNewCourse(courses);
          }
          break;
        }
      case 4:
        {
          print('enter number of lectures you want to add');
          int nl = int.parse(stdin.readLineSync()!);
          for (int j = 0; j < nl; j++) {
            print('enter name of the lecture ${j + 1}');
            String nameOfLecture = stdin.readLineSync()!;
            print("enter name of the lecture's file ${j + 1}");
            String file_Name = stdin.readLineSync()!;
            print('enter description of the lecture ${j + 1}');
            String descriptionOfLecture = stdin.readLineSync()!;
            Lectures lecture = Lectures(lectureName: nameOfLecture,
                lectureDescription: descriptionOfLecture,
                lectureFileName: file_Name);
            c.addNewLecture(lecture);
          }
          break;
        }
      case 5:
        {
        print('enter number of sheets you want to add');
        int ns = int.parse(stdin.readLineSync()!);
        for (int i = 0; i < ns; i++) {
          print('enter number of the sheet ${i + 1}');
          int numberOfSheet = int.parse(stdin.readLineSync()!);
          print("enter name of the Sheet file ${i + 1}");
          String nameOfSheetFile = stdin.readLineSync()!;
          print('enter description of the sheet ${i + 1}');
          String descriptionOfSheet = stdin.readLineSync()!;
          Sheets sheet = Sheets(desc: descriptionOfSheet,
              sheetname: nameOfSheetFile,
              num: numberOfSheet);
          c.addNewSheet(sheet);
        }
        break;
      }
      case 6:{
        print('enter the Course you want to delete');
        String deletedCourse = stdin.readLineSync()!;
        c.deleteCourse(deletedCourse);
        break;
      }
      case 7:{
        print('enter the Lecture you want to remove');
        String deletedLecture = stdin.readLineSync()!;
        Courses courses = Courses();
        courses.deleteLecture(deletedLecture);
        break;
      }
      case 8: {
        print('enter the Sheet you want to remove');
        String deletedSheet = stdin.readLineSync()!;
        Courses courses = Courses();
        courses.deleteLecture(deletedSheet);
        break;
      }
      case 9: {
        c.showDataOfTeachers();
        break;
      }
      case 10: {
        c.showDataOfCourses();
        break;
      }
    }
    print('do you want do anything else (y/n)?');
    ss=stdin.readLineSync()!;
  }
  while(ss=='y'  || ss=='Y');
}
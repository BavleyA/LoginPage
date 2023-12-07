import 'dart:io';

import 'package:flutter_app/lectures.dart';
import 'package:flutter_app/sheets.dart';

class Courses extends Lectures{
  late String _courseName ,_description;
  late List<Lectures> _listOfLectures = [];
  late List<Sheets> _listOfSheets = [];

  Courses({String courseName="" ,String description = "" }){
    this._courseName=courseName;
    this._description=description;

  }
  void setCourse(){
    print('course name');
    _courseName=stdin.readLineSync()!;
    print('course description');
    _description=stdin.readLineSync()!;
  }
 /*void getCourse(){
    print('course name $_courseName');
    print('course description$_description');
  }
  */

  String get courseName => _courseName;

  set courseName(String value) {
    _courseName = value;
  }

  get description => _description;

  set description(value) {
    _description = value;
  }

  List<Lectures> get listOfLectures => _listOfLectures;

  set listOfLectures(List<Lectures> value) {
    _listOfLectures = value;
  }

  List<Sheets> get listOfSheets => _listOfSheets;

  set listOfSheets(List<Sheets> value) {
    _listOfSheets = value;
  }
  void addNewLecture(Lectures lecture){
    listOfLectures.add(lecture);
  }
  void deleteLecture(String lecture){
    if(listOfLectures.contains(lecture)){
      listOfLectures.remove(lecture);
    }
  }
  void addNewSheet(Sheets sheet){
    listOfSheets.add(sheet);
  }
  void deleteSheet(String sheet){
    if(listOfSheets.contains(sheet)){
      listOfSheets.remove(sheet);
    }
  }
  void showSheetData(){
    listOfSheets.forEach((element) {
      print('sheet info  ${element.setSheet}');
    });
  }
  void showLectureData(){
    listOfLectures.forEach((element) {
      print('Lecture info ${element.getLecture}');
    });
  }
}
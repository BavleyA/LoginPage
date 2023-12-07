import 'dart:io' show stdin;
import 'package:flutter_app/sheets.dart';
class Lectures extends Sheets {
  late String _lectureName, _lectureDescription , _fileName;
  Lectures({String lectureName = "",String lectureDescription = "",String lectureFileName = ""}) {
    this._lectureDescription = lectureDescription;
    this._fileName = lectureFileName;
    this._lectureName = lectureName;
  }

  void setLecture(){
    print('Lecture name');
    _lectureName=stdin.readLineSync()!;
    print('lecture description');
    _lectureDescription=stdin.readLineSync()!;
    print('lecture fileName');
    _fileName=stdin.readLineSync()!;
  }

  void getLecture(){
    print('lecture name $_lectureName');
    print('lecture filename $_fileName');
    print('sheet description $_lectureDescription');
  }
  /*
  String get description {
    return _lectureDescription;
  }

  set description(value) {
    _lectureDescription = value;
  }

  String get fileName {
    return _fileName;
  }

  set fileName(value) {
    _fileName = value;
  }

  String get lectureName {
    return _lectureName;
  }
  set lectureName(value) {
    _lectureName = value;
  }
  */

}
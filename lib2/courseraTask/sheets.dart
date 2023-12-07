import 'dart:io';
class Sheets{
  late String  _description , _sheetName;
  late int _sheetNum;
  Sheets({String desc='', String sheetname='',int num=0}){
    this._description=desc;
    this._sheetName=sheetname;
    this._sheetNum=num;
  }
  void setSheet(){
    print('sheet name');
    _sheetName=stdin.readLineSync()!;
    print('sheet description');
    _description=stdin.readLineSync()!;
    print('sheet number');
    _sheetNum=int.parse(stdin.readLineSync()!);
  }

  void getSheet(){
    print('sheet name $_sheetName');
    print('sheet number $_sheetNum');
    print('sheet description $_description');
  }

/*
  String get description {
    return _description;
  }
  set description(d){
    _description=d;
  }

  String get sheetname {
    return _sheetName;
  }
  set sheetname(sn){
    _sheetName=sn;
  }

  int get sheetnum {
    return _sheetNum;
  }
  set sheetnum(int snum){
    _sheetNum=snum;
  }
  */


}
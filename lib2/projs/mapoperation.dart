import 'dart:io';

main() {
  Map<String, dynamic> myMap = {};
  String choice;
  String key = "";
  do {
    print("choose the operation u want to do \n 1: Add values \n 2: Remove values \n 3: Update values \n 4: Show \n 5: Search  ");
    int s = int.parse(stdin.readLineSync()!);

    if (s == 1) {
      print("enter number of values");
      int nv = int.parse(stdin.readLineSync()!);
      for (int i = 0; i < nv; i++) {
        print("enter the keys of the map.");
        String keys = stdin.readLineSync()!;
          print("enter the Value of the key");
          int v = int.parse(stdin.readLineSync()!);
          myMap.addAll({keys: v});
      }
    }
    else if (s == 2) {
      print("select the way u want to remove with 1- Value or 2- key ");
      int rs = int.parse(stdin.readLineSync()!);
      if (rs == 1) {
        if (myMap.isEmpty) {
          print("The map is empty");
        }
        else {
          print("enter the the Value u want to remove!");
          int rvalue = int.parse(stdin.readLineSync()!);
          String kkey="";
          myMap.forEach((key, v) {
            if (v == rvalue) {
              kkey = key;
            }
          });
          myMap.remove(kkey);
        }
      }
      else if (rs == 2) {
        print("enter the key you want to remove");
        String rk = stdin.readLineSync()!;
        if (myMap.containsKey(rk)) {
          myMap.remove(rk);
        }
        else print('not found !');
      }
    }
    else if(s == 3){
      print("Please enter the value you want to update");
      int uv = int.parse(stdin.readLineSync()!);
      if(myMap.containsValue(uv)){
        print("enter the New Value");
        int newv = int.parse(stdin.readLineSync()!);
        myMap.forEach((key, v) {
          if(v== uv){
            myMap[key]=newv;
          }});
      }
      else{
        print("not found !");
      }
    }
    else if(s == 4){
      if(myMap.isEmpty){
        print('map is empty');
      }
      else {
        myMap.forEach((key, v) {
          print('key = $key , value of key =$v');
        });
      }

    }
    else if(s == 5)
    {
      print("Do u want to search with a value or key\n  1- key\n 2- value");
      int ss = int.parse(stdin.readLineSync()!);
      if(ss == 1){
        print("enter the key you searching for");
        String keyy= stdin.readLineSync()!;
        if(myMap.containsKey(keyy)) {
          print("found!");
        }
        else
          {
          print("not found !");
        }
      }
      else if(ss == 2 ){
        print("enter the value you searching for");
        int searchv = int.parse(stdin.readLineSync()!);
        if(myMap.containsValue(searchv)){
          print("Found");
          myMap.forEach((key, v) {
            if(v== searchv){
              print('key : $key , value :$v');
            }});
        }
        else{
          print("Not found");
        }
      }
    }
    print(myMap);
    print("Do you want to continue (y/n)? ");
    choice = stdin.readLineSync()!;
  }  while (choice == 'y');

}


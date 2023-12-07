import 'dart:io';
main() {
  String cv;
  List mylist = [];
  int x = 0;
  do {
    print("Please choose the operation u want to do \n 1- Add values \n 2- Remove values \n 3- Update values \n 4- Show \n 5- Search");
    int s = int.parse(stdin.readLineSync()!);
    if (s == 1) {
      print("enter number of values");
      int n = int.parse(stdin.readLineSync()!);
      print("enter the Values");
      for (int i = 0; i < n; i++) {
        mylist.add(int.parse(stdin.readLineSync()!));
      }
      print("The values added");
    }
    else if (s == 2) {
      print("select the way u want to remove with 1- Value or 2- Index ");
      int rs = int.parse(stdin.readLineSync()!);
      if (rs == 1) {
        print("enter the value u want to remove");
        int rv = int.parse(stdin.readLineSync()!);
        if (mylist.contains(rv)) {
          mylist.remove(rv);
        }
        else {
          print("Value not found enter valid value ");
        }
      }
      else if (rs == 2) {
        print("enter the index");
        int ri = int.parse(stdin.readLineSync()!);
        if (mylist.isEmpty) {
          print("cant remove list is empty");
        }
        else {
          if (ri <= mylist.length) {
            mylist.removeAt(ri);
            print("The value removed");
            mylist.forEach((x) {
              print(x);
            });
          }
          else {
            print("enter valid range ");
          }
        }
      }
    }
    else if (s == 3) {
      print("choose the value you want to update");
      int uv = int.parse(stdin.readLineSync()!);
      if (mylist.contains(uv)) {
        print("enter the new value");
        int ii = mylist.indexOf(uv);
        mylist.removeAt(ii);
        int nv = int.parse(stdin.readLineSync()!);
        mylist.insert(ii, nv);
      }
      else {
        print("not found enter valid value");
      }
    }
    else if (s == 4) {
      if (mylist.isEmpty) {
        print("The list is empty");
      } else {
        mylist.forEach((x) {
          print(x);
        });
      }
    }
    else if (s == 5) {
      print("Do u want to search with a value or index\n  1- value\n 2- index");
      int ss = int.parse(stdin.readLineSync()!);
      if (ss == 1) {
        print("enter the value");
        int sv = int.parse(stdin.readLineSync()!);
        if (mylist.contains(sv)) {
          print("The value is found at index ${mylist.indexOf(sv) + 1}");
        }
        else {
          print("Value not found!");
        }
      }
      else if (ss == 2) {
        print("enter the index");
        int si2 = int.parse(stdin.readLineSync()!);
        if (si2 <= mylist.length) {
          print("The value in the index $si2 is ${mylist[si2 - 1]}");
        } else {
          print("out of range");
        }
      }
    }
    print("Do you want to continue(y/n) ? ");
   cv = stdin.readLineSync()!;
  } while (cv == 'y');
}
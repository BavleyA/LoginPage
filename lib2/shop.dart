import 'dart:io';
import 'package:flutter_app/addProduct.dart';

import 'products.dart';

class shop extends addProduct {
  void addtocar() {
    print('enter the product name');
    String name = stdin.readLineSync()!;
    print('enter visitor name to show ');
    String n = stdin.readLineSync()!;
    for (int i = 0; i < products.length; i++) {
      if (products[i]['name'] == name) {
        for (int y = 0; y < visitor.length; y++) {
          visitor[y]['cart'].add({
            'name': products[i]['name'],
            'price': products[i]['price'],
            'discount': products[i]['discount'],
          });
        }
      }
    }
  }

  void total_price() {
    print('enter visitor name to show ');
    String n = stdin.readLineSync()!;
    double t = 0;
    for (int i = 0; i < visitor.length; i++) {
      if (visitor[i]['name'] == n) {
        for (int y = 0; y < visitor[i]['cart'].length; y++) {
          t += visitor[i]['cart'][y]['price'];
        }
      }
    }
    print(t);
  }

  void total_priceAfterDiscount() {
    print('enter visitor name');
    String na = stdin.readLineSync()!;
    double total = 0;
    for (int i = 0; i < visitor.length; i++) {
      if (visitor[i]['name'] == na) {
        for (int y = 0; y < visitor[i]['cart'].length; y++) {
          total += (visitor[i]['cart'][y]['price']) *
              (1 - (visitor[i]['cart'][y]['discount']));
        }
      }
    }
    print(total);
  }

  void del_productformcar() {
    print('enter product name to del');
    String pro = stdin.readLineSync()!;
    print('enter vistor name ');
    String vis = stdin.readLineSync()!;
    for (int i = 0; i < visitor.length; i++) {
      if (visitor[i]['name'] == vis) {
        for (int y = 0; y < visitor[i]['cart'].length; y++) {
          if (visitor[i]['cart'][y]['name'] == pro)
            visitor[i]['cart'].removeAt(y);
        }
      }
    }
  }

  void showShopCar() {
    print('enter visitor name to show ');
    String n = stdin.readLineSync()!;
    for (int i = 0; i < visitor.length; i++) {
      if (visitor[i]['name'] == n) {
        print(' ${visitor[i]['cart']}');
      }
    }
  }
}

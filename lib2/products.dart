import 'dart:io';
import 'addProduct.dart';
List visitor = [];
List products = [];
class product extends addProduct {
  void addproduct() {
    super.addproduct();
    products.add(super.getproduct());
  }
  void deleteproduct() {
    print('enter the product name');
    String name = stdin.readLineSync()!;
    for (int i = 0; i < products.length; i++) {
      if (name == products[i]['name']) {
        products.removeAt(i);
      }
    }
  }

  void show_products() {
    for (int i = 0; i < products.length; i++) {
      print('${products[i]['name']}');
      print('${products[i]['des']}');
      print('${products[i]['price']}');
      print('${products[i]['discount']}');
    }
  }

  void addvisitor() {
    print('enter the visitor name');
    String name = stdin.readLineSync()!;
    print('enter the visitor email');
    String email = stdin.readLineSync()!;
    visitor.add({'name': name, 'email': email, 'cart': []});
  }

  void show_visitor() {
    for (int i = 0; i < visitor.length; i++) {
      print('${visitor[i]['name']}');
    }
  }


  void searchBy_name() {
    print('enter the product name');
    String name = stdin.readLineSync()!;
    for (int i = 0; i < products.length; i++) {
      if (name == products[i]['name']) {
        print(' $i ');
      }
    }
  }

  void searchBy_price() {
    print('enter the product price');
    double price = double.parse(stdin.readLineSync()!);
    List name = [];
    for (int i = 0; i < products.length; i++) {
      if (price == products[i]['price']) {
        name.add(products[i]['name']);
        print(name);
      }
    }
  }
}
